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

#include "preprocessor/ConfigurationProperties.hpp"

void
ConfigurationProperties::initialize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationProperties::execute(const Settings *settings, State *state)
{
    /* Determine shared inputs based on the parsed annotations */
    determine_shared_inputs(state);

    /* Identify hierarchical details */
    identify_hierarchical_details(state);

    /* Store input variables for each wire */
    for (unsigned int core = 0; core < settings->getCores(); core++) {
        for (auto w : state->m_netlist_model->module_under_test(0)->wires()) {
            state->m_netlist_model->resize_variable_vectors(w->uid(), settings->getCores());
            gate_store_variables(state->m_netlist_model, w, core);
        }
    }
}

void
ConfigurationProperties::finalize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationProperties::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    (void)settings;
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.

    /* Print header */
    logger->header("PROPERTIES");

    // Masking related
    logger->log(service, this->m_name, "Determined " + std::to_string(state->m_shared_inputs.size()) + " shared inputs.");
    logger->log(service, this->m_name, ITEM + "Minimum number of shares: " + std::to_string(state->m_min_shared_inputs.size()));

    // Hierarchical details
    logger->log(service, this->m_name, "Identified stage(s): ");

    logger->log(service, this->m_name, ITEM + "logic    : " + std::to_string(state->m_netlist_model->logic_stages()));
    logger->log(service, this->m_name, ITEM + "register : " + std::to_string(state->m_netlist_model->register_stages()));


    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}


/*
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void
ConfigurationProperties::determine_shared_inputs(State *state)
{
    /* Check error conditions */
    if (state->m_netlist_model->topmodule()->wires().size() == 0) throw std::logic_error(this->m_name + ": Detected empty top module!");

    /* Initialize set of wires */
    std::set<const verica::Wire*> variables;

    /* Collect shared inputs and shared variables */
    for (auto p : state->m_netlist_model->topmodule()->input_pins()) {
        if (p->port_type() == verica::Flag::None && p->share_index() != -1 && p->share_domain() != -1) {
            state->m_shared_inputs[p->share_index()].push_back(p->fan_out());
            variables.insert(p->fan_out());
        }
    }

    /* Erase duplicated shared inputs */
    for (auto input : state->m_shared_inputs) {
        std::sort(state->m_shared_inputs[input.first].begin(),
                  state->m_shared_inputs[input.first].end(),
                  [](const verica::Wire* a, const verica::Wire* b) { return a->source_pin()->share_domain() < b->source_pin()->share_domain(); }
        );
        state->m_shared_inputs[input.first].erase(
            std::unique(state->m_shared_inputs[input.first].begin(), state->m_shared_inputs[input.first].end(),
                [](const verica::Wire* w0, const verica::Wire* w1){return w0->source_pin()->share_domain() == w1->source_pin()->share_domain();}),
            state->m_shared_inputs[input.first].end()
        );
    }

    /* Find smallest inputs sharing */
    int minimal = 0;
    for (unsigned int index = 0; index < state->m_shared_inputs.size(); index++)
        minimal = (state->m_shared_inputs[index].size() < state->m_shared_inputs[minimal].size()) ? index : minimal;
    state->m_min_shared_inputs = state->m_shared_inputs[minimal];

    /* Determine wires of the shared variables */
    for(auto v : variables) state->m_shared_variables.push_back(v);
}

void
ConfigurationProperties::identify_hierarchical_details(State *state){
    /* Hierarchical details */
    const verica::Module* mut = state->m_netlist_model->module_under_test(0);

    // First, identify depth index
    for(auto w : mut->wires()){
        if(std::find(mut->input_pins().begin(), mut->input_pins().end(), w->source_pin()) != mut->input_pins().end()){
            state->m_netlist_model->set_depth_index(w->uid(), 0);
        } else if(w->source_pin()->parent_module()->is_sequential()){
            state->m_netlist_model->set_depth_index(w->uid(), w->source_pin()->parent_module()->input_pins()[0]->fan_in()->depth_index()+1);
        } else {
            int maximum_layer = 0;
            if(w->source_pin()->fan_in() != nullptr){
                maximum_layer = w->source_pin()->fan_in()->depth_index();
            } else {
                for(auto p : w->source_pin()->parent_module()->input_pins()) {
                    if(p->fan_in() != nullptr) maximum_layer = (p->fan_in()->depth_index() > maximum_layer) ? p->fan_in()->depth_index() : maximum_layer;
                }
            }
            state->m_netlist_model->set_depth_index(w->uid(), maximum_layer+1);
        }
    }

    // Second, identify the register stages - first register stage gets index 0
    for(auto w : mut->wires()) {
        if(w->source_pin()->parent_module()->is_sequential()) {
            state->m_netlist_model->set_stage_index(w->uid(), find_input_register_index(state->m_netlist_model, w)+1);
        }
        state->m_netlist_model->register_stages() += (state->m_netlist_model->register_stages() < w->stage_index());
    }

    // Third, annotate inputs
    for(auto p : mut->input_pins()) state->m_netlist_model->set_stage_index(p->fan_out()->uid(), 0);

    // Fourth, identify stage_index for all remaining gates
    std::vector<const verica::Pin*> input_pins = mut->input_pins();
    for(auto w : mut->wires()){
        if(!w->source_pin()->parent_module()->is_sequential()){
            int idx = 0;
            if(std::find(mut->input_pins().begin(), mut->input_pins().end(), w->source_pin()) == mut->input_pins().end()){
                // do not consider input pins
                bool connected_to_reg = false;
                int reg_idx = 0;
                if(w->source_pin()->parent_module()->gate()){
                    // current wire is connected to an output of a gate
                    for(auto p : w->source_pin()->parent_module()->input_pins()){
                        if(!p->is_const()){
                            idx = (p->fan_in()->stage_index() > idx) ? p->fan_in()->stage_index() : idx;
                            if(p->fan_in()->source_pin()->parent_module()->is_sequential()) {
                                // inputs of the gate are connected to registers
                                connected_to_reg |= true;
                                // reg_idx = p->fan_in()->stage_index() + 1;
                                reg_idx = p->fan_in()->stage_index();
                            }
                        }
                    }
                } else {
                    // current wire is connected to another wire (e.g., connection between two modules)
                    idx = w->source_pin()->fan_in()->stage_index();
                    if(w->source_pin()->fan_in()->source_pin()->parent_module()->is_sequential()) {
                        // wire is connected to a register
                        connected_to_reg |= true;
                        // reg_idx = w->source_pin()->fan_in()->stage_index() + 1;
                        reg_idx = w->source_pin()->fan_in()->stage_index();
                    }
                }
                if(connected_to_reg) idx = reg_idx;
            }
            // set logic stage for current wire and update number of logic stages
            state->m_netlist_model->set_stage_index(w->uid(), idx);
            state->m_netlist_model->logic_stages() += (state->m_netlist_model->logic_stages() <= w->stage_index());
        }
    }

    // Fifth, determine inputs and outputs of the Module Under Test (MUT)
    state->m_mut_input_size = state->m_netlist_model->module_under_test(0)->input_pins().size();
    for (auto p : state->m_netlist_model->module_under_test(0)->output_pins()) state->m_mut_outputs.push_back(p->fan_in());
}

int
ConfigurationProperties::find_input_register_index(const verica::Netlist* model, const verica::Wire* wire){
    int res = 0; // no register detected
    std::vector<const verica::Pin*> input_pins = model->module_under_test(0)->input_pins();

    if (wire == nullptr) {  // In most cases, a nullptr Wire pointer is caused by an erroneous Verilog file.
        throw std::runtime_error("[ELABORATE] Wire pointer is set as nullptr.");
    }

    const verica::Pin* next_pin = wire->source_pin();
    while (!next_pin->parent_module()->gate() && std::find(input_pins.begin(), input_pins.end(), next_pin) == input_pins.end()){
        next_pin = next_pin->fan_in()->source_pin();
    }

    for(auto p : next_pin->parent_module()->input_pins()){
        if(std::find(input_pins.begin(), input_pins.end(), p) == input_pins.end() && !p->is_const()){
            const verica::Pin* next_pin_next = p->fan_in()->source_pin();
            while (!next_pin_next->parent_module()->gate() && std::find(input_pins.begin(), input_pins.end(), next_pin_next) == input_pins.end()){
                next_pin_next = next_pin_next->fan_in()->source_pin();
            }
            // if(p->fan_in()->source_pin()->parent_module()->is_sequential()) return p->fan_in()->stage_index();
            if(next_pin_next->parent_module()->is_sequential()) return next_pin_next->fan_out()->stage_index();

            int sub_res = find_input_register_index(model, p->fan_in());

            res = (sub_res > res) ? sub_res : res;
        }
    }

    return res;
}

void
ConfigurationProperties::gate_store_variables(verica::Netlist* model, const verica::Wire* wire, int core){
    /* Current module under test */
    const verica::Module* mut = model->module_under_test(0);

    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        model->insert_variable(wire->uid(), wire, core);
    } else if(wire->source_pin()->fan_in() != nullptr){
        model->insert_variable(wire->uid(), wire->source_pin()->fan_in()->variables(core), core);
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0) {

        for(auto elem : wire->source_pin()->parent_module()->input_pins()){
            model->insert_variable(wire->uid(), elem->fan_in()->variables(core), core);
        }
    } else {
        throw std::logic_error("[MODEL POSTPROCESSING] Module with zero input pins detected (gate_store_variables())!");
    }
}
