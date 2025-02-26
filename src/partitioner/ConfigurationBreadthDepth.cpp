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

#include "partitioner/ConfigurationBreadthDepth.hpp"
#include "util.hpp"

void
ConfigurationBreadthDepth::initialize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}

void
ConfigurationBreadthDepth::execute(const Settings *settings, State *state) {
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.

    const verica::Module* mut = state->m_netlist_model->topmodule();

    /* Partitioning in Depth */
    /* Create vector of intermediate stages (inputs, register stages, outputs) */
    std::vector<std::set<const verica::Wire*>> intermediate_stages;

    // add inputs to list of intermediate stages
    std::set<const verica::Wire*> inputs;
    for(auto p : mut->input_pins()) inputs.insert(p->fan_out());
    intermediate_stages.push_back(inputs);

    // add register stage to list of intermediate stages
    for(int stage=0; stage < state->m_netlist_model->register_stages(); stage++){
        std::set<const verica::Wire*> empty_set;
        intermediate_stages.push_back(empty_set);
    }

    for(auto w : mut->wires()){
        for(auto p : w->target_pins()){
            if(p->parent_module()->is_sequential()) {
                intermediate_stages[w->stage_index()+1].insert(w);
            }
        }
    }

    // add outputs to list of intermediate stages
    std::set<const verica::Wire*> outputs;
    for(auto p : mut->output_pins()) outputs.insert(p->fan_in());
    intermediate_stages.push_back(outputs);

    // // DEBUG ////////////////////////////////////////////////
    // std::cout << "Number of intermediate stages: " << intermediate_stages.size() << std::endl;
    // for(auto s : intermediate_stages){
    //     std::cout << "   New stage (" << s.size() << " wires): ";
    //     for(auto w : s) std::cout << w->name() << " (" << w->uid() << ")  ";
    //     std::cout << std::endl;
    // }
    // /////////////////////////////////////////////////////////


    /* Preprocessing for Partitioning in Breadth */
    // In order to create an adjacency list of all register stages, we need unique numbers to represent the secrets
    int max_uid = 0;
    for(auto stage : intermediate_stages){
        for(auto w : stage) max_uid = (w->uid() > max_uid) ? w->uid() : max_uid;
    }
    max_uid += 1;

    // Create clusters representing the secret inputs
    std::vector<std::set<int>> cluster;
    for(auto sharing : state->m_shared_inputs){
        std::set<int> cluster_uids;
        for(auto w : sharing.second) cluster_uids.insert(w->uid());
        if(!cluster_uids.empty()) cluster.push_back(cluster_uids);
    }

    // Each refresh is considered as secret as well
    for(auto p : state->m_netlist_model->topmodule()->input_pins()){
        if(p->port_type() == verica::Refresh){
            std::set<int> ref;
            ref.insert(p->fan_out()->uid());
            cluster.push_back(ref);
        }
    }

    std::vector<std::set<int>> influencing_inputs;
    for(unsigned int stage_idx=1; stage_idx<intermediate_stages.size(); stage_idx++){
        std::vector<const verica::Module*> stage_partition;

        /* Partitioning in Breadth */
        // Create adjacency list of the current logic stage (connect inputs with outputs)
        std::map<int, std::vector<int>> adj_list;
        std::set<int> registers;
        for(auto reg : intermediate_stages[stage_idx]){
            for(auto secret : reg->variables(0)){
                for(unsigned int idx=0; idx<cluster.size(); idx++){
                    if(std::find(cluster[idx].begin(), cluster[idx].end(), secret->uid()) != cluster[idx].end()){
                        // The identifier for the secrets are determined by the uid of the secret + 2*module_size
                        // We have to use the offset of 2*module_size in order to avoid twofold usage of some UIDs.
                        adj_list[idx + max_uid].push_back(reg->uid());
                        adj_list[reg->uid()].push_back(idx + max_uid);
                        registers.insert(reg->uid());
                    }
                }
            }
        }


        // // DEBUG ////////////////////////////////////////////////
        // std::cout << "Adjacency list" << std::endl;
        // for(auto s : adj_list){
        //     std::cout << "   Element " << s.first << " maps to: ";
        //     for(auto w : s.second) std::cout << w << " ";
        //     std::cout << std::endl;
        // }
        // /////////////////////////////////////////////////////////



        // Initialize map to track visited nodes
        std::map<int, bool> visited;
        for(auto elem : adj_list) visited[elem.first] = false;

        // Identify weakly connected components
        // Each weakly connected component represents one partition
        std::vector<std::vector<int>> connected_sets;
        for(auto elem : adj_list){
            if(visited[elem.first] == false){
                std::vector<int> temp;
                connected_sets.push_back(temp);
                depth_first_search(adj_list, visited, elem.first, connected_sets);
            }
        }

        // Separate sets into inputs and outputs, i.e., secrets and probes, respectively
        std::vector<std::pair<std::set<int>, std::vector<int>>> separated_connected_sets;
        for(auto connection : connected_sets){
            std::set<int> set_inputs;
            std::vector<int> set_outputs;
            for(auto elem : connection){
                if(elem >= max_uid){
                    set_inputs.insert(elem);
                } else {
                    set_outputs.push_back(elem);
                }
            }
            separated_connected_sets.push_back(std::make_pair(set_inputs, set_outputs));
        }

        if(stage_idx > 1){
            std::vector<std::set<int>> new_influencing_inputs;
            for(auto input : separated_connected_sets) new_influencing_inputs.push_back(input.first);

            std::vector<std::vector<int>> stage_combination;
            for(auto new_module : new_influencing_inputs) {
                std::set<int> module_combination;
                for(auto sec : new_module){
                    // bool is_in = false;
                    // for(auto old_module : influencing_inputs){
                    for(unsigned int idx_old_module=0; idx_old_module<influencing_inputs.size(); idx_old_module++){
                        if(std::find(influencing_inputs[idx_old_module].begin(), influencing_inputs[idx_old_module].end(), sec) != influencing_inputs[idx_old_module].end()) {
                            module_combination.insert(idx_old_module);
                        }
                    }
                }
                std::vector<int> temp(module_combination.begin(), module_combination.end());
                stage_combination.push_back(temp);
            }
            state->m_partition_combinations.push_back(stage_combination);
        }
        influencing_inputs.clear();
        for(auto input : separated_connected_sets) influencing_inputs.push_back(input.first);

        // Debug ////////////////////////////////////////////
        // if(settings->getVerbose() > 2){
        //     std::cout << "   Identified " << connected_sets.size() << " partitions." << std::endl;
        //     for(auto s : separated_connected_sets){
        //         std::cout << "   New partition: " << std::endl;
        //         std::cout << "      Secrets: ";
        //         for(auto e : s.first) std::cout << e << " ";
        //         std::cout << std::endl;
        //         std::cout << "      Probes: ";
        //         for(auto e : s.second) std::cout << state->m_netlist_model->get_wire(e)->name() << " ";
        //         // for(auto e : s.second) std::cout << e << " ";
        //         std::cout << std::endl;
        //     }
        // }
        /////////////////////////////////////////////////////


        /* Create new (virtual) modules */
        for(auto partition : separated_connected_sets){
            std::set<const verica::Wire*> wires;
            std::vector<const verica::Pin*> to_visit;
            for(auto outputs : partition.second) {
                for(auto p : state->m_netlist_model->get_wire(outputs)->target_pins()) to_visit.push_back(p);
            }

            std::set<const verica::Wire*> partition_inputs;
            while(!to_visit.empty()){
                const verica::Pin* current_pin = to_visit[0];
                to_visit.erase(to_visit.begin());

                wires.insert(current_pin->fan_in());

                bool is_partition_input = true;
                if(current_pin->fan_in()->source_pin()->parent_module() != state->m_netlist_model->topmodule()){
                    if(current_pin->fan_in()->source_pin()->fan_in() != nullptr) {
                        to_visit.push_back(current_pin->fan_in()->source_pin());
                        is_partition_input = false;
                    }
                    else if(!current_pin->fan_in()->source_pin()->parent_module()->is_sequential()){
                        to_visit.insert(to_visit.end(), current_pin->fan_in()->source_pin()->parent_module()->input_pins().begin(),
                                                        current_pin->fan_in()->source_pin()->parent_module()->input_pins().end());
                        is_partition_input = false;
                    }
                }

                if(is_partition_input) {
                    if(current_pin->fan_in()->source_pin()->parent_module() == state->m_netlist_model->topmodule()){
                        partition_inputs.insert(current_pin->fan_in());
                    } else {
                        for(auto p : current_pin->fan_in()->source_pin()->parent_module()->input_pins()){
                            partition_inputs.insert(p->fan_in());
                        }
                    }
                }
            }

            // The above method only extracts the necessary wires. However, they are not topologically sorted anymore
            // Identify sorted wires
            std::vector<const verica::Wire*> sorted_wires;
            for(auto w : state->m_netlist_model->topmodule()->wires()){
                if(std::find(wires.begin(), wires.end(), w) != wires.end()){
                    sorted_wires.push_back(w);
                }
            }

            // Try to generate modules of the determined partitions
            // Having modules would make the upcoming verification steps much easier -> mostly all functions are implemented to work with module_under_test()
            verica::Module* virtual_module = state->m_netlist_model->add_module("virtual_module_" + std::to_string(m_virtual_module_cnt), state->m_netlist_model->topmodule()->uid());

            // std::cout << "Module " << virtual_module->name() << " includes the following wire: " << std::endl;
            for(auto w : sorted_wires) {
                state->m_netlist_model->add_wire_to_module(virtual_module->uid(), w->uid());
                // std::cout << "   " << w->name() << std::endl;
            }

            // Create a new wire and new pin for each input of the current partition
            unsigned int wire_cnt = 0;
            for(auto w : partition_inputs){

                if(w->source_pin()->parent_module() == state->m_netlist_model->topmodule()){
                    verica::Pin* new_pin = state->m_netlist_model->add_pin("input_pin" + std::to_string(wire_cnt) + "_vm" + std::to_string(m_virtual_module_cnt), virtual_module, true);
                    verica::Wire* new_wire = state->m_netlist_model->add_wire("input_wire" + std::to_string(wire_cnt) + "_vm" + std::to_string(m_virtual_module_cnt), state->m_netlist_model->topmodule()->uid());

                    // establish connection of virtual module with topmodule
                    int pin_uid = w->source_pin()->uid();
                    state->m_netlist_model->remove_wire_source(w->uid());
                    state->m_netlist_model->set_wire_source(w->uid(), new_pin->uid());

                    state->m_netlist_model->set_wire_source(new_wire->uid(), pin_uid);
                    state->m_netlist_model->set_wire_target(new_wire->uid(), new_pin->uid());

                    // annotate properties
                    state->m_netlist_model->set_depth_index(new_wire->uid(), w->depth_index());
                    state->m_netlist_model->set_stage_index(new_wire->uid(), w->stage_index());

                    state->m_netlist_model->resize_variable_vectors(new_wire->uid(), settings->getCores());
                    for (unsigned core = 0; core < settings->getCores(); core++) {
                        state->m_netlist_model->insert_variable(new_wire->uid(), w->variables(core), core);
                    }

                    state->m_netlist_model->set_primary_input_identifier(new_wire->uid(), w->primary_input_identifier());

                    state->m_netlist_model->set_pin_share_domain(new_pin->uid(), state->m_netlist_model->get_pin(pin_uid)->share_domain());
                    state->m_netlist_model->set_pin_share_index(new_pin->uid(), state->m_netlist_model->get_pin(pin_uid)->share_index());

                    state->m_netlist_model->set_pin_fault_domain(new_pin->uid(), state->m_netlist_model->get_pin(pin_uid)->fault_domain());

                    wire_cnt++;

                } else {
                    verica::Pin* new_pin = state->m_netlist_model->add_pin("input_pin" + std::to_string(wire_cnt) + "_vm" + std::to_string(m_virtual_module_cnt), virtual_module, true);
                    verica::Wire* new_wire = state->m_netlist_model->add_wire("input_wire" + std::to_string(wire_cnt) + "_vm" + std::to_string(m_virtual_module_cnt), virtual_module->uid());

                    // establish connection of virtual module with topmodule
                    for (auto p : w->target_pins()) {
                        int pin_uid = p->uid();
                        state->m_netlist_model->remove_wire_target(w->uid(), pin_uid);
                        state->m_netlist_model->set_wire_target(new_wire->uid(), pin_uid);

                        state->m_netlist_model->set_pin_share_domain(new_pin->uid(), state->m_netlist_model->get_pin(pin_uid)->share_domain());
                        state->m_netlist_model->set_pin_share_index(new_pin->uid(), state->m_netlist_model->get_pin(pin_uid)->share_index());

                        state->m_netlist_model->set_pin_fault_domain(new_pin->uid(), state->m_netlist_model->get_pin(pin_uid)->fault_domain());
                    }

                    state->m_netlist_model->set_wire_target(w->uid(), new_pin->uid());
                    state->m_netlist_model->set_wire_source(new_wire->uid(), new_pin->uid());

                    // annotate properties
                    state->m_netlist_model->set_depth_index(new_wire->uid(), w->depth_index());
                    state->m_netlist_model->set_stage_index(new_wire->uid(), w->stage_index());

                    state->m_netlist_model->resize_variable_vectors(new_wire->uid(), settings->getCores());
                    for (unsigned int core = 0; core < settings->getCores(); core++) {
                        state->m_netlist_model->insert_variable(new_wire->uid(), w->variables(core), core);
                    }

                    state->m_netlist_model->set_primary_input_identifier(new_wire->uid(), w->primary_input_identifier());

                    // increase wire count
                    wire_cnt++;
                }
            }

            // Create a new wire and new pin for each output of the current partition
            wire_cnt = 0;
            for (auto w_uid : partition.second) {
                const verica::Wire* w = state->m_netlist_model->get_wire(w_uid);
                for (auto p : w->target_pins()) {
                    if (p->parent_module()->is_sequential() || p->parent_module() == state->m_netlist_model->topmodule()) {
                        // create new wire and pin
                        verica::Wire* new_wire = state->m_netlist_model->add_wire("output_wire" + std::to_string(wire_cnt) + "_vm" + std::to_string(m_virtual_module_cnt), state->m_netlist_model->topmodule()->uid());
                        verica::Pin* new_pin = state->m_netlist_model->add_pin("output_pin" + std::to_string(wire_cnt) + "_vm" + std::to_string(m_virtual_module_cnt), virtual_module, false);
                        wire_cnt++;

                        // establish connection of virtual module with topmodule
                        int pin_uid = p->uid();
                        state->m_netlist_model->remove_wire_target(w->uid(), pin_uid);
                        state->m_netlist_model->set_wire_target(w->uid(), new_pin->uid());

                        state->m_netlist_model->set_wire_source(new_wire->uid(), new_pin->uid());
                        state->m_netlist_model->set_wire_target(new_wire->uid(), pin_uid);

                        // annotate properties
                        state->m_netlist_model->set_depth_index(new_wire->uid(), w->depth_index());
                        state->m_netlist_model->set_stage_index(new_wire->uid(), w->stage_index());

                        state->m_netlist_model->resize_variable_vectors(new_wire->uid(), settings->getCores());
                        for (unsigned int core = 0; core < settings->getCores(); core++) {
                            state->m_netlist_model->insert_variable(new_wire->uid(), w->variables(core), core);
                        }
                    }
                }
            }

            // push virtual module to a container holding all partitions of one register stage
            stage_partition.push_back(virtual_module);

            m_virtual_module_cnt++;

        }

        // push virtual modules to global container
        state->m_sca_partitions.push_back(stage_partition);
    }

    /* Sort model */
    state->m_netlist_model->sort_wires();
}

void
ConfigurationBreadthDepth::finalize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}

void
ConfigurationBreadthDepth::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.

    /* Print header */
    logger->header("PARTITIONER");

    if(settings->getVerbose() > 0){
        logger->log(service, this->m_name, "Identified " + std::to_string(m_virtual_module_cnt) + " partitions.");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);

}

void
ConfigurationBreadthDepth::depth_first_search(std::map<int, std::vector<int>> &adj_list, std::map<int, bool> &visited, int elem, std::vector<std::vector<int>> &connected_sets){
    visited[elem] = true;

    connected_sets.back().push_back(elem);

    for(auto node : adj_list[elem]){
        if(!visited[node]) depth_first_search(adj_list, visited, node, connected_sets);
    }
}
