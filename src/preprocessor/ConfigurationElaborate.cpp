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

#include "preprocessor/ConfigurationElaborate.hpp"


void
ConfigurationElaborate::initialize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}

void
ConfigurationElaborate::execute(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.

    /* Get core and instantiation number */
    unsigned int thread_num = omp_get_thread_num();
    m_inst_num = state->m_core_to_inst[thread_num];

    // (void) masking;

    /* Select masking scheme */
    // @TODO: move this to independence strategy?
    // std::map<int, BDD> secrets;
    // switch(masking) {
    //     case 0:
    //         secrets = booleanMasking(manager, netlistToMap(model, manager));
    //         break;
    //     case 1:
    //         secrets = additiveMasking(manager, netlistToMap(model, manager))[0];
    //         break;
    //     default:
    //         throw std::logic_error("[ELABORATION] Invalid masking scheme detected!");
    // }

    for(auto w:state->m_netlist_model->module_under_test(m_inst_num)->wires()){
        /* For each gate, store the corresponding BDD functions */
        gate_store_functions(state->m_netlist_model, w, state->m_managers[m_inst_num], state);

        /* For each gate, store the registers */
        gate_store_registers(state->m_netlist_model, w);

        /* For each gate, stor the input variables of the corresponding stage */
        gate_store_stage_variables(state->m_netlist_model, w);

        /* For each gate, store the secrets */
        // if(settings->getSideChannelStrategy() == "independence") gate_store_secrets(model, w, secrets, manager, core);
    }

    state->m_managers[m_inst_num].ReduceHeap(CUDD_REORDER_SIFT);
    // state->m_netlist_model->info();
}

void
ConfigurationElaborate::report(std::string service, const Logger *logger, const Settings *settings, State *state) const{
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.

    // /* Determine thread number */
    unsigned int thread_num = omp_get_thread_num();

    /* Print header */
    logger->header("MODULE ELABORATION");

    /* Print results */
    logger->log(service, this->m_name, "module  : " + state->m_netlist_model->module_under_test(m_inst_num)->name());
    logger->log(service, this->m_name, ITEM + "inputs  : " + std::to_string(state->m_netlist_model->module_under_test(m_inst_num)->input_pins().size()));
    logger->log(service, this->m_name, ITEM + "outputs : " + std::to_string(state->m_netlist_model->module_under_test(m_inst_num)->output_pins().size()));
    logger->log(service, this->m_name, ITEM + "wires   : " + std::to_string(state->m_netlist_model->module_under_test(m_inst_num)->wires().size()));

    /* Multithreading details */
    if(settings->getVerbose() > 2)
        logger->log(service, this->m_name, "Elaborated on core " + std::to_string(thread_num));

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}

void
ConfigurationElaborate::finalize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}


void
ConfigurationElaborate::gate_store_functions(verica::Netlist* model, const verica::Wire* wire, Cudd_Manager &manager, State *state) {
    /* Determine thread number */
    // unsigned int thread_num = omp_get_thread_num();

    /* Current module under test */
    const verica::Module* mut = model->module_under_test(m_inst_num);

    /* Create BDD variable for all (global) inputs */
    if (wire->source_pin()->is_const()){
        // handle constant inputs @TODO: this can also be accomplished by the identifier 8 and 9 (see injection.cpp)
        if (wire->source_pin()->const_input() == 0)
            model->set_bdd_golden_function(wire->uid(), manager.bddZero(), m_inst_num);
        else if (wire->source_pin()->const_input() == 1)
            model->set_bdd_golden_function(wire->uid(), manager.bddOne(), m_inst_num);
    } else if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        // create new BDD variable
        if(state->m_externally_created_bdds.find(wire) == state->m_externally_created_bdds.end()){
            BDD temp = manager.bddVar();
            model->set_bdd_golden_function(wire->uid(), temp, m_inst_num);
            // if(wire->primary_input_identifier() == -1){
            //     std::cout << "   Elaborate refresh: " << wire->name() << std::endl;
            //     model->set_bdd_golden_function(wire->uid(), manager.bddVar(), m_inst_num);
            // } else {
            //     model->set_bdd_golden_function(wire->uid(), manager.bddVar(wire->primary_input_identifier()), m_inst_num);
            // }
        } else {
            model->set_bdd_golden_function(wire->uid(), manager.bddVar(state->m_externally_created_bdds[wire]), m_inst_num);
        }
    } else if(wire->source_pin()->fan_in() != nullptr){
        // connection between two modules (same BDD function as input wire)
        model->set_bdd_golden_function(wire->uid(), wire->source_pin()->fan_in()->golden_functions(m_inst_num), m_inst_num );
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0){
        // evaluate BDDs based on the gate identifiers
        std::vector<const verica::Pin*> input_pins = wire->source_pin()->parent_module()->input_pins();
        std::vector<BDD> operands;
        for(auto p : input_pins) {
            if(p->is_const()){
                BDD const_in = p->const_input() ? manager.bddOne() : manager.bddZero();
                operands.push_back(const_in);
            } else {
                operands.push_back(p->fan_in()->golden_functions(m_inst_num));
            }
        }
        switch (wire->source_pin()->gate_identifier()){
            case 0:
                model->set_bdd_golden_function(wire->uid(), operands[0], m_inst_num);
                break;
            case 1:
                model->set_bdd_golden_function(wire->uid(), !operands[0], m_inst_num);
                break;
            case 2:
                model->set_bdd_golden_function(wire->uid(), operands[0] & operands[1], m_inst_num);
                break;
            case 3:
                model->set_bdd_golden_function(wire->uid(), !(operands[0] & operands[1]), m_inst_num);
                break;
            case 4:
                model->set_bdd_golden_function(wire->uid(), operands[0] | operands[1], m_inst_num);
                break;
            case 5:
                model->set_bdd_golden_function(wire->uid(), !(operands[0] | operands[1]), m_inst_num);
                break;
            case 6:
                model->set_bdd_golden_function(wire->uid(), operands[0] ^ operands[1], m_inst_num);
                break;
            case 7:
                model->set_bdd_golden_function(wire->uid(), !(operands[0] ^ operands[1]), m_inst_num);
                break;
            case 11:
                model->set_bdd_golden_function(wire->uid(), operands[0], m_inst_num);
                break;
            case 12:
                model->set_bdd_golden_function(wire->uid(), !operands[0], m_inst_num);
                break;
            default:
                throw std::logic_error("[ELABORATE] Gate identifier " + std::to_string(wire->source_pin()->gate_identifier()) + " is not supported!");
        }
    }
    else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_functions())!");
    }
}

void
ConfigurationElaborate::gate_store_registers(verica::Netlist* model, const verica::Wire* wire) {
    /* Determine thread number */
    // unsigned int thread_num = omp_get_thread_num();

    /* Current module under test */
    const verica::Module* mut = model->module_under_test(m_inst_num);

    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        model->insert_register(wire->uid(), wire, m_inst_num);
    } else if(wire->source_pin()->fan_in() != nullptr){
        model->insert_register(wire->uid(), wire->source_pin()->fan_in()->registers(m_inst_num), m_inst_num);
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0) {
        if (wire->source_pin()->parent_module()->is_sequential()) {
            model->insert_register(wire->uid(), wire, m_inst_num);
        } else {
            for(auto elem : wire->source_pin()->parent_module()->input_pins()){
                if(elem->fan_in() != nullptr) model->insert_register(wire->uid(), elem->fan_in()->registers(m_inst_num), m_inst_num);
            }
        }
    } else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_registers())!");
    }
}

void
ConfigurationElaborate::gate_store_stage_variables(verica::Netlist* model, const verica::Wire* wire){
    /* Determine thread number */
    // unsigned int thread_num = omp_get_thread_num();

    /* Current module under test */
    const verica::Module* mut = model->module_under_test(m_inst_num);

    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        model->insert_stage_variable(wire->uid(), wire->uid(), m_inst_num);
    } else if(wire->source_pin()->fan_in() != nullptr){
        model->insert_stage_variable(wire->uid(), wire->source_pin()->fan_in()->stage_variables(m_inst_num), m_inst_num);
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0) {
        // if (wire->source_pin()->parent_module()->is_sequential()) {
        //     model->insert_stage_variable(wire->uid(), wire->uid(), m_inst_num);
        // } else {
            for(auto elem : wire->source_pin()->parent_module()->input_pins()){
                model->insert_stage_variable(wire->uid(), elem->fan_in()->stage_variables(m_inst_num), m_inst_num);
            }
        // }
    } else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_stage_variables())!");
    }
}

void
ConfigurationElaborate::gate_store_secrets(verica::Netlist* model, const verica::Wire* wire, std::map<int, BDD> secrets, Cudd_Manager &manager) {
    /* Determine thread number */
    // unsigned int thread_num = omp_get_thread_num();

    /* Current module under test */
    const verica::Module* mut = model->module_under_test(m_inst_num);

    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        if(wire->source_pin()->port_type() == verica::Refresh){
            model->set_bdd_secret(wire->uid(), manager.bddOne(), m_inst_num);
        } else {
            int share_idx = wire->source_pin()->share_index();
            if(share_idx == -1){
                model->set_bdd_secret(wire->uid(), manager.bddZero(), m_inst_num);
            } else {
                int module_size = model->module_under_test(m_inst_num)->wires().size() + model->module_under_test(m_inst_num)->output_pins().size();
                model->set_bdd_secret(wire->uid(), manager.bddVar(module_size + share_idx).Ite(secrets[share_idx], manager.bddOne()), m_inst_num);
            }
        }
    } else if(wire->source_pin()->fan_in() != nullptr){
        model->set_bdd_secret(wire->uid(), wire->source_pin()->fan_in()->secrets(m_inst_num), m_inst_num);
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0) {
        model->set_bdd_secret(wire->uid(), manager.bddOne(), m_inst_num);
        for(auto elem : wire->source_pin()->parent_module()->input_pins()){
            if(elem->fan_in() != nullptr) model->set_bdd_secret(wire->uid(), wire->secrets(m_inst_num) & elem->fan_in()->secrets(m_inst_num), m_inst_num);
        }
    } else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_secrets())!");
    }
}

std::map<int, std::vector<BDD>>
ConfigurationElaborate::netlistToMap(verica::Netlist* model, Cudd_Manager &manager){
    /* Determine thread number */
    // unsigned int thread_num = omp_get_thread_num();

    std::map<int, std::vector<BDD>> inputs;
    std::map<int, std::vector<int>> inputs_idx;

    for(auto p : model->module_under_test(m_inst_num)->input_pins()){
        std::cout << "Input pin: " << p->name() << std::endl;
        if(std::find(inputs_idx[p->share_index()].begin(), inputs_idx[p->share_index()].end(), p->fan_out()->primary_input_identifier()) == inputs_idx[p->share_index()].end()){
            std::cout << "Pin index: " << p->share_index() << std::endl;
            std::cout << "Wire: " << p->fan_out()->name() << std::endl;
            std::cout << "PIID: " << p->fan_out()->primary_input_identifier() << std::endl;
            inputs[p->share_index()].push_back(manager.bddVar(p->fan_out()->primary_input_identifier()));
            inputs_idx[p->share_index()].push_back(p->fan_out()->primary_input_identifier());
        }
    }

    return inputs;
}

std::map<int, BDD>
ConfigurationElaborate::booleanMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs) {
    std::map<int, BDD> result;
    for(auto share_idx : inputs){
        BDD tmp = cuddManager.bddZero();
        for(auto share : share_idx.second) tmp ^= share;
        result.insert(std::pair<int, BDD>(share_idx.first, tmp));
    }

    return result;
}

std::map<int, BDD>*
ConfigurationElaborate::additiveMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs) {
    static Cudd_Manager manager = cuddManager;
    static std::map<int, BDD> result[2];
    result[0].clear(); result[1].clear();

    // Ripple Carry Adder (using bdd_add in cudd_ext.cpp)
    bool is_trivial = true;
    for (std::map<int, std::vector<BDD>>::iterator shareit = inputs.begin(); shareit != inputs.end(); shareit++)
    {
        if ((shareit->second).size() > 1) {
            is_trivial = false;
        }
    }

    // Trivial case: Share indices only contain one domain per share
    if (is_trivial) {
        for (std::map<int, std::vector<BDD>>::iterator shareit = inputs.begin(); shareit != inputs.end(); shareit++)
        {
            result[0].insert(std::pair<int, BDD>(shareit->first, *((shareit->second).begin())));
        }
    }

    // Recursive usage of a Ripple Carry Adder (using bdd_add in sylvan_ext.cpp)
    else {
        BDD carry = cuddManager.bddZero();
        std::map<int, std::vector<BDD>> temp_map;

        // Add the first two domains of every share and append the result to the remaining domain vectors
        for (std::map<int, std::vector<BDD>>::iterator shareit = inputs.begin(); shareit != inputs.end(); shareit++)
        {
            std::vector<BDD> temp_vector;
            std::vector<BDD>::iterator domainit = (shareit->second).begin();
            BDD dd1 = *domainit;
            domainit++;
            BDD dd2 = *domainit;
            domainit++;

            BDD* bdd_ptr = manager.bdd_add(dd1, dd2, carry);
            temp_vector.push_back(bdd_ptr[0]);
            carry = bdd_ptr[1];

            while (domainit != (shareit->second).end())
            {
                temp_vector.push_back(*domainit++);
            }

            temp_map.insert(std::pair<int, std::vector<BDD>>(shareit->first, temp_vector));
        }

        std::map<int, BDD>* temp_res = additiveMasking(cuddManager, temp_map);
        result[0] = temp_res[0];
        result[1] = temp_res[1];
    }

    return result;
}
