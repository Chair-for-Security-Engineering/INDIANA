/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr University Bochum
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de) and Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2024/833.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2025, Pascal Sasdrich, Jan Richter-Brockmann
 *
 * All rights reserved.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Please see license.rtf and README for license and further instructions.
 */

#include "preprocessor/ConfigurationSCA.hpp"

void
ConfigurationSCA::initialize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationSCA::execute(const Settings *settings, State *state)
{
    // // Disable auto dynamic reordering
    // /**! @todo: dynamic variable reordering not working for side-channel verification */
    // for(auto man : state->m_managers) man.AutodynDisable();

    // // Compute shared inputs
    // determine_shared_inputs(state);

    if (settings->getSideChannel()) {
        // Determine all possible probe positions
        determine_probe_positions(state, settings);
        update_probe_combinations_indistinguishability(state, settings, state->m_netlist_model->module_under_test(0)->wires(), 0);
    }
}

void
ConfigurationSCA::update(State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int reduce_order, const int thread_num)
{
    update_probe_combinations(state, settings, modified, reduce_order, thread_num);
}

void
ConfigurationSCA::finalize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationSCA::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Print header */
    logger->header("Configure SCA");

    /* Print info */
    if (settings->getVerbose() > 0) {
        // logger->log(service, this->m_name, "Disabled auto-dynamic reordering for BDDs.");
        // logger->log(service, this->m_name, "Determined " + std::to_string(state->m_shared_inputs.size()) + " shared inputs.");
        if (settings->getSideChannel()) {
            // logger->log(service, this->m_name, ITEM + "Minimum number of shares: " + std::to_string(state->m_min_shared_inputs.size()));
            logger->log(service, this->m_name, "Determined " + std::to_string(m_positions.size()) + " probe positions.");
            logger->log(service, this->m_name, "Determined " + std::to_string(state->m_probe_combinations[0].size()) + " probe combinations.");
        }
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}

/*
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void
ConfigurationSCA::determine_probe_positions(State *state, const Settings *settings)
{
    /* Check error conditions */
    if (state->m_netlist_model->num_wires() == 0) throw std::logic_error(this->m_name + ": Detected empty set of probe positions!");

    /* Reduce probe combinations for glitches */
    std::map<int, std::vector<const verica::Wire*>> stage_index_to_wires;
    if (settings->getSideChannelModelGlitches()){
        for (unsigned int idx = 0; idx < state->m_netlist_model->module_under_test(0)->wires().size(); idx++){
            /* Current position */
            const verica::Wire *current = state->m_netlist_model->module_under_test(0)->wires()[idx];
            const verica::Pin *source = current->source_pin();

            /* Collect sequential probes */
            bool is_sequential = false;
            for (auto target : current->target_pins())
                is_sequential |= (target->parent_module()->is_sequential());

            /* Collect input probes */
            bool is_input_pin = (source->parent_module() == state->m_netlist_model->module_under_test(0));
            is_input_pin = false;

            /* Collect output probes */
            bool is_output_pin = false;
            for (auto target : current->target_pins())
                is_output_pin |= (target->parent_module() == state->m_netlist_model->module_under_test(0));

            if (is_sequential || is_input_pin || is_output_pin) {
                // Only add wire if not blacklisted
                if(!current->sca_ignore()) {
                    m_positions.push_back(current);
                    stage_index_to_wires[current->stage_index()].push_back(current);
                }
            }
        }
    }
    else {
        for(auto w : state->m_netlist_model->module_under_test(0)->wires()){
            // Only add wire if not blacklisted
            if(!w->sca_ignore()) {
                m_positions.push_back(w);
                stage_index_to_wires[w->stage_index()].push_back(w);;
            }
        }
    }

    /* Separate positions into stages */
    for(auto pair : stage_index_to_wires) {
        std::vector<const verica::Wire*> temp;
        for(auto w : pair.second) temp.push_back(w);
        m_stage_positions.push_back(temp);
    }

    if (m_positions.size() == 0) throw std::logic_error(this->m_name + ": Detected empty set of probe positions!");
}


void
ConfigurationSCA::update_probe_combinations(State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int reduce_order, const int thread_num) {
    /* Clear current set of probe combinations */
    state->m_probe_combinations[thread_num].clear();

    /* Define order of security */
    int max_order = (settings->getSideChannelOrder() > 0) ? settings->getSideChannelOrder() : state->m_min_shared_inputs.size() - 1;
    max_order -= reduce_order;

    /* Generate all possible probe combinations for all orders */
    for (int order = 0; order < max_order; order++){
        /* Initialize bitmask (first combination) */
        std::vector<bool> bitmask(m_positions.size());
        std::fill(bitmask.begin(), bitmask.begin() + (order + 1), true);

        /* Generate all possible probe combinations for current order */
        do
        {
            std::vector<const verica::Wire*> probes;
            int min = 0;
            int max = 0;

            /* Check distance of probes (register stages) for multi-variate analysis */
            for (unsigned int idx = 0; idx < bitmask.size(); idx++) {
                if (bitmask[idx]) {
                    /* Generate probe combination */
                    probes.push_back(m_positions[idx]);

                    /* Initialize min/max stage index & support BDD */
                    if (probes.size() == 1) {
                        min = m_positions[idx]->stage_index();
                        max = m_positions[idx]->stage_index();
                    }

                    /* Update min/max stage index & support BDD */
                    else {
                        min = (min > m_positions[idx]->stage_index()) ? m_positions[idx]->stage_index() : min;
                        max = (max < m_positions[idx]->stage_index()) ? m_positions[idx]->stage_index() : max;
                    }
                }
            }

            /* Skip combinations*/
            bool skip = false;

            /* Skip combination if multi-variate threshold exceeded */
            skip |= (max - min) >= 1;

            /* Skip if already analyzed but did not change (e.g., not in fault propagation path) */
            bool found = false;
            for (unsigned int elem = 0; elem < probes.size() && !found; elem++)
                found |= (std::find(modified.begin(), modified.end(), probes[elem]) != modified.end());
            skip |= !found;

            /* Add probe combination */
            if (!skip){
                std::vector<const verica::Wire*> temp;
                state->m_probe_combinations[thread_num].push_back(std::make_pair(probes, temp));
            }
        }
        while(std::prev_permutation(bitmask.begin(), bitmask.end()));
    }
}


void
ConfigurationSCA::update_probe_combinations_indistinguishability(State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int reduce_order)
{
    (void)settings;
    (void)modified;
    (void)reduce_order;

    state->m_probe_positions_indistinguishability = m_stage_positions;

    // TODO: incorporate modified list of probes and reduced order (if possible...)
}

