/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr University Bochum
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de) and Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2024/833.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2025, Pascal Sasdrich
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

#define timing

#include <chrono>

#include "analyzer/ConfigurationIndistinguishabilityProbing.hpp"

void
ConfigurationIndistinguishabilityProbing::initialize(const Settings *settings, State *state)
{
    /* Initialize frequencies */
    ConfigurationIndistinguishability::initialize(settings, state);

    /* Clear failing probes (from previous runs) */
    this->m_failing_probes.clear();
    this->m_failing_probes_multithreading.clear();
    this->m_failing_probes_multithreading.resize(settings->getCores());

    /* Get maximum order of security */
    this->m_max_order = (settings->getSideChannelOrder() > 0) ? settings->getSideChannelOrder() : state->m_min_shared_inputs.size() - 1;
}


void
ConfigurationIndistinguishabilityProbing::execute(const Settings *settings, State *state) {
    /* Determine thread */
    unsigned int thread_num = omp_get_thread_num();
    unsigned int inst_num = state->m_core_to_inst[thread_num];

    /* -------------------------------------------------------------- */
    /* Check security order (exhaustive combination check)            */
    /* -------------------------------------------------------------- */

    /* Update probes */
    m_current_probes.clear();
    for(auto p : state->m_netlist_model->module_under_test(inst_num)->output_pins()) m_current_probes.push_back(p->fan_in());

    /* Determine input variables */
    m_input_variables.clear();
    for(auto p : state->m_netlist_model->module_under_test(inst_num)->input_pins()) m_input_variables.insert(p->fan_out()->uid());

    /* Create sets of indistinguishable probes */
    std::vector<std::vector<const verica::Wire*>> sets_of_probes;
    sets_of_probes = create_indistinguishable_sets(settings, state, this->m_current_probes, inst_num);

    /* Create combinations between sets */
    for(unsigned int order=1; order<=this->m_max_order; order++)
    {
        std::vector<std::vector<const verica::Wire*>> permuted_sets_of_probes;
        create_combinations(order, sets_of_probes, permuted_sets_of_probes);

        /* Check indistinguishability of combinations */
        for(unsigned int comb_idx=0; comb_idx<permuted_sets_of_probes.size(); comb_idx++){
            std::set<int> next_comb;
            for(auto t : permuted_sets_of_probes[comb_idx]) {
                next_comb.insert(t->stage_variables(inst_num).begin(), t->stage_variables(inst_num).end());
            }

            bool ind = indistinguishable(state, next_comb, inst_num);

            if(!ind){
                this->m_failing_probes.push_back(permuted_sets_of_probes[comb_idx]);
            }
        }
    }
}


void
ConfigurationIndistinguishabilityProbing::finalize(const Settings *settings, State *state) {
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.

    /* Finalize frequencies */
    ConfigurationIndistinguishability::finalize(settings, state);

    /* Collect probes from multithreading */
    for (unsigned int core = 0; core < settings->getCores(); core++) {
        for (auto probes : this->m_failing_probes_multithreading[core]) {
            this->m_failing_probes.push_back(probes);
        }
    }
}

void
ConfigurationIndistinguishabilityProbing::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Determine thread */
    unsigned int thread_num = omp_get_thread_num();
    unsigned int inst_num = state->m_core_to_inst[thread_num];

    /* Print header */
    logger->header("ANALYSIS REPORT");

    /* Print probing model information */
    if (settings->getVerbose() >= VINFO) {
        std::string message;

        logger->log(service, this->m_name, "module: " + state->m_netlist_model->module_under_test(inst_num)->name());
        logger->log(service, this->m_name, "model parameters:");

        message = ITEM + "glitches    : ";
        message += (settings->getSideChannelModelGlitches() ? "yes" : "no");
        logger->log(service, this->m_name, message);

        message = ITEM + "transitions : ";
        /**! @todo: message += (settings->getSideChannelModelTransitions() ? "yes" : "no"); */
        message += (settings->getSideChannelModelTransitions() ? "currently not supported" : "no");
        logger->log(service, this->m_name, message);

        message = ITEM + "couplings   : ";
        /**! @todo: message += (settings->getSideChannelModelCouplings() ? "yes" : "no"); */
        message += (settings->getSideChannelModelCouplings() ? "currently not supported" : "no");
        logger->log(service, this->m_name, message);
    }


    if (settings->getVerbose() >= VBASE) {
        /* Print verification parameters */
        logger->log(service, this->m_name, "verification:");
        logger->log(service, this->m_name, ITEM + "assuming : d \u2264 " + std::to_string(this->m_max_order));

        /* Print verification results */
        if (this->m_failing_probes.size() != 0) {
            logger->log(service, this->m_name, ITEM + "verified : d \u2264 " + std::to_string(this->m_failing_probes[0].size() - 1));
        } else {
            logger->log(service, this->m_name, ITEM + "verified : d \u2264 " + std::to_string(this->m_max_order));
        }
    }

    /* Print detailed results */
    if (settings->getVerbose() >= VFULL) {

        logger->log(service, this->m_name, "failing probe combinations:");

        /* Report total number of failing probe combinations */
        logger->log(service, this->m_name, ITEM + "total : " + std::to_string(this->m_failing_probes.size()));

        /* Report first failing probe combination */
        if (this->m_failing_probes.size() != 0) {
            // logger->log(service, this->m_name, ITEM + "first : " + state->m_netlist_model->wire_vector_to_json_string(this->m_failing_probes[0]));
            for(auto p : this->m_failing_probes){
                logger->log(service, this->m_name, ITEM + state->m_netlist_model->wire_vector_to_json_string(p));
            }
        } else {
            logger->log(service, this->m_name, ITEM + "first : - ");
        }
        logger->log(service, this->m_name, "Verified on core " + std::to_string(thread_num));

    }

    /* Print final result to footer */
    if (this->m_failing_probes.size() == 0) {
        logger->footer(service, this->m_name, SUCCESS);
    } else if (this->m_failing_probes[0].size() > this->m_max_order) {
        logger->footer(service, this->m_name, SUCCESS);
    } else {
        logger->footer(service, this->m_name, FAILURE);
    }
}

void
ConfigurationIndistinguishabilityProbing::insert(const ConfigurationIndistinguishabilityProbing* configuration)
{
    for (auto combination : configuration->failing_probes())
        if (std::find(this->m_failing_probes.begin(), this->m_failing_probes.end(), combination) == this->m_failing_probes.end())
            this->m_failing_probes.push_back(combination);
}

std::vector<std::vector<const verica::Wire*>>
ConfigurationIndistinguishabilityProbing::create_indistinguishable_sets(const Settings *settings, State *state, std::vector<const verica::Wire*> &probes, unsigned int inst_num)
{
    (void)settings;

    std::vector<std::vector<const verica::Wire*>> sets_of_probes;
    std::vector<const verica::Wire*> working_probes = probes;

    /* Create indistinguishable sets */
    while(!working_probes.empty()){
        std::set<int> current_set;
        std::vector<const verica::Wire*> current_set_of_probes;

        // Always add the first probe combinations to current_set to prevent an endless loop
        current_set.insert(working_probes[0]->stage_variables(inst_num).begin(), working_probes[0]->stage_variables(inst_num).end());
        current_set_of_probes.push_back(working_probes[0]);
        working_probes.erase(working_probes.begin());

        // we loop over an unsigned int to receive indistinguishable sets and
        // the corresponding indices (required to identify failing probes)
        for(unsigned int idx=0; (working_probes.begin()+idx) != working_probes.end();){
            // increase set
            std::set<int> old_set = current_set;
            current_set.insert(working_probes[idx]->stage_variables(inst_num).begin(), working_probes[idx]->stage_variables(inst_num).end());

            // check if still indistinguishable
            bool ind = indistinguishable(state, current_set, inst_num);

            if(ind){
                current_set_of_probes.push_back(working_probes[idx]);
                working_probes.erase(working_probes.begin()+idx);
            } else {
                current_set = old_set;
                ++idx;
            }
        }

        // push new valid set
        sets_of_probes.push_back(current_set_of_probes);
    }

    return sets_of_probes;
}


bool
ConfigurationIndistinguishabilityProbing::indistinguishable(State *state, std::set<int> &set, unsigned int &inst_num) {
    /* Determine set difference between input variables and observation set */
    std::vector<int> var_cube(set.size() + m_input_variables.size());
    std::vector<int>::iterator it;
    it=std::set_difference (m_input_variables.begin(), m_input_variables.end(), set.begin(), set.end(), var_cube.begin());
    var_cube.resize(it-var_cube.begin());

    /* Convert indices to BDD variables and afterwards to ADDs */
    BDD bdd_cube = state->m_managers[inst_num].bddOne();
    for(auto v : var_cube) {
        bdd_cube &= state->m_netlist_model->get_wire(v)->functions(inst_num);
    }

    ADD add_cube = bdd_cube.Support().Add();

    /* Determine indistinguishability */
    ADD check0;
    ADD check1;
    check0 = m_frequency.first.ExistAbstract(add_cube);
    check1 = m_frequency.second.ExistAbstract(add_cube);

    return ((check0 - check1) == state->m_managers[inst_num].addZero()) ? true : false;
}


void
ConfigurationIndistinguishabilityProbing::create_combinations(unsigned int d, std::vector<std::vector<const verica::Wire*>> &data, std::vector<std::vector<const verica::Wire*>> &permuted_data)
{
    // unroll input data, create array with bucket indices
    std::vector<unsigned int> bucket_indices;
    std::vector<const verica::Wire*> unrolled_data;
    for(unsigned int bucket=0; bucket < data.size(); ++bucket){
        for(auto elem : data[bucket]) {
            bucket_indices.push_back(bucket);
            unrolled_data.push_back(elem);
        }
    }

    // limit d to maximum number of probes
    d = unrolled_data.size() < d ? unrolled_data.size() : d;

    // bitmask to create combinations
    std::vector<bool> bitmask(unrolled_data.size());
    std::fill(bitmask.begin(), bitmask.begin() + d, true);

    // counter to track number of probes from each bucket
    std::vector<unsigned int> counter(data.size(), 0);

    // using the do-while loop to create all combinations (unrolled_data.size() choose d) combinations
    do {
        std::vector<const verica::Wire*> selected_data;
        for(long unsigned int i=0; i < unrolled_data.size(); ++i){
            if(bitmask[i]){
                selected_data.push_back(unrolled_data[i]);
                counter[bucket_indices[i]]++;
            }
        }

        // ensure that not all probes are selected from the same bucket
        bool valid = true;
        if(d != 1){
            for(auto cnt : counter){
                if(cnt == d) valid &= false;
            }
        }

        // if valid combination, push to permuted_data
        if(valid) permuted_data.push_back(selected_data);

        // reset counter
        std::fill(counter.begin(), counter.end(), 0);

    } while(std::prev_permutation(bitmask.begin(), bitmask.end()));
}
