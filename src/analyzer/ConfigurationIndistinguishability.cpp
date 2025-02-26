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

#include "analyzer/ConfigurationIndistinguishability.hpp"

void
ConfigurationIndistinguishability::initialize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;

    /* Get core */
    unsigned int thread_num = omp_get_thread_num();
    unsigned int inst_num = state->m_core_to_inst[thread_num];


    /* Compute unshared inputs (secrets) */
    std::vector<BDD> unshared_inputs;
    std::vector<int> covered_piid;
    for(auto m : state->m_shared_inputs){       // loop over all shared inputs of the entire topmodule
        BDD temp = state->m_managers[inst_num].bddZero();
        bool is_in_partition = false;
        for(auto p : state->m_netlist_model->module_under_test(inst_num)->input_pins()){
            if(p->share_index() == m.first){    // extract only shared inputs that belong to the current module under test
                is_in_partition |= true;
                if(std::find(covered_piid.begin(), covered_piid.end(), p->fan_out()->primary_input_identifier()) == covered_piid.end()){
                    temp ^= p->fan_out()->golden_functions(inst_num);
                    covered_piid.push_back(p->fan_out()->primary_input_identifier());
                }
            }
        }
        if(is_in_partition) unshared_inputs.push_back(temp);
    }

    /* Initialize frequencies */
    BDD f0 = state->m_managers[inst_num].bddOne();
    BDD f1 = state->m_managers[inst_num].bddOne();
    for(auto sec : unshared_inputs){
        f0 &= (sec ^ state->m_managers[inst_num].bddVar());
        f1 &= (sec);
    }

    // Make checks available to other functions
    m_frequency = std::make_pair(f0.Add(), f1.Add());

    state->m_managers[inst_num].ReduceHeap(CUDD_REORDER_SIFT);
}


void
ConfigurationIndistinguishability::finalize(const Settings *settings, State *state)
{
    /* Determine thread */
    unsigned int thread_num = omp_get_thread_num();
    unsigned int inst_num = state->m_core_to_inst[thread_num];

    /* Generate stage input to stage output matrix */
    std::map<int, std::set<int>> input_to_outputs = inputs_to_outputs_matrix(state, inst_num);

    /* Update frequencies for next clock cycle (using transition relation) */
    m_frequency = transition_relation(settings, state, input_to_outputs, m_frequency, inst_num);

    state->m_managers[inst_num].ReduceHeap(CUDD_REORDER_SIFT);

    // Extract frequencies from probing strategy
    //BDD freqVar = m_frequency.second.Support(), actVar = m_frequency.first.Support().ExistAbstract(freqVar);
}


std::map<int, std::set<int>>
ConfigurationIndistinguishability::inputs_to_probes_matrix(State *state, std::vector<const verica::Wire*> probes, int inst_num)
{
    (void)state;

    /* Matrix (mapping each input index to output indices) */
    std::map<int, std::set<int>> matrix;

    /* Collect all target wires */
    for (auto current : probes)
    {
        for (auto support : current->stage_variables(inst_num))
        {
            matrix[support].insert(current->uid());
        }

        m_stage_connection[current->uid()] = current;   // TODO: Correct?
    }

    return matrix;
}


std::map<int, std::set<int>>
ConfigurationIndistinguishability::inputs_to_outputs_matrix(State *state, int inst_num)
{
    /* Matrix (mapping each input index to output indices) */
    std::map<int, std::set<int>> matrix;

    /* Collect all output pins of current module under test */
    for(auto p : state->m_netlist_model->module_under_test(inst_num)->output_pins()) {
        if(p->fan_out()->target_pins()[0]->parent_module() == state->m_netlist_model->topmodule()) {
            for(auto support : p->fan_in()->stage_variables(inst_num)) {
                matrix[support].insert(p->fan_out()->uid());
            }

            m_stage_connection[p->fan_out()->uid()] = p->fan_in();
        } else {
            // due to the construction of the (virtual) modules, we do not have to loop over target_pins()
            for(auto support : p->fan_in()->stage_variables(inst_num)) {
                matrix[support].insert(p->fan_out()->target_pins()[0]->fan_out()->uid());
            }

            m_stage_connection[p->fan_out()->target_pins()[0]->fan_out()->uid()] = p->fan_in();
        }
    }

    return matrix;
}


std::pair<ADD, ADD>
ConfigurationIndistinguishability::transition_relation(const Settings *settings, State *state, std::map<int, std::set<int>> transition, std::pair<ADD, ADD> frequencies, int inst_num)
{
    std::set<int> covered_transition_terms, inputs_influencing_transition_terms;

    /* Generate inverse matrix (easy access) */
    std::map<int, std::set<int>> inverse;

    for(auto line : transition) {
        for(auto elem : line.second) {
            inverse[elem].insert(line.first);
        }
    }

    BDD support = state->m_managers[inst_num].bddOne();

    /* Collect full support of MUT */
    for (auto pin : state->m_netlist_model->module_under_test(inst_num)->input_pins())
        support &= pin->fan_out()->functions(inst_num);

    /* Compute missing support of MUT */
    for (auto line : transition)
        support = support.ExistAbstract(state->m_netlist_model->wires().at(line.first)->functions(inst_num));

    /* Abstract missing support from frequencies */
    frequencies.first  = frequencies.first.ExistAbstract(support.Add());
    frequencies.second = frequencies.second.ExistAbstract(support.Add());

    /* Collect input indices */
    std::set<int> input_indices;
    for (auto line : transition){
        input_indices.insert(line.first);
    }

    /* Step-wise transition and early quantification */
    while(!input_indices.empty()){
        std::map<int, std::set<int>> count_inputs;
        unsigned int input_index = 0;
        for(auto s : input_indices){
            // fill counter
            std::set<int> collected_inputs;
            for(auto t : transition[s]){
                collected_inputs.insert(inverse[t].begin(), inverse[t].end());
                std::vector<int> diff_inputs = set_minus(collected_inputs, inputs_influencing_transition_terms);
                count_inputs[s].insert(diff_inputs.begin(), diff_inputs.end());
            }
        }

        // determine minimum counter
        unsigned int min_cnt = transition.size()+1;
        for(auto c : count_inputs){
            if(c.second.size() < min_cnt) min_cnt = c.second.size();
        }

        for(auto c : count_inputs){
            if(c.second.size() == min_cnt){
                input_index = c.first;
                if(std::find(inputs_influencing_transition_terms.begin(), inputs_influencing_transition_terms.end(), c.first) != inputs_influencing_transition_terms.end()){
                    break;
                }
            }
        }

        std::vector<int> difference_trans_terms = set_minus(transition[input_index], covered_transition_terms);

        inputs_influencing_transition_terms.insert(count_inputs[input_index].begin(), count_inputs[input_index].end());
        inputs_influencing_transition_terms.erase(input_index);

        perform_quantification_step(settings, frequencies, difference_trans_terms, input_index, state, inst_num);

        covered_transition_terms.insert(transition[input_index].begin(), transition[input_index].end());
        input_indices.erase(input_index);

        for(auto t : inverse){
            inverse[t.first].erase(input_index);
        }
    }

    return frequencies;
}

void
ConfigurationIndistinguishability::tree_based_multiplication(BDD &result, std::vector<BDD> &terms)
{

    while(terms.size() != 1) {
        unsigned int limit = terms.size() / 2;

        for(unsigned int idx=0; idx<limit; idx++)
        {
            terms.push_back(terms[2*idx] & terms[2*idx+1]);
        }

        for(unsigned int idx=0; idx<limit; idx++)
        {
            terms.erase(terms.begin());
            terms.erase(terms.begin());
        }
    }

    result = terms[0];

}

std::vector<int>
ConfigurationIndistinguishability::set_minus(std::set<int> &set_a, std::set<int> &set_b)
{
    std::vector<int> difference(set_a.size() + set_a.size());
    std::vector<int>::iterator it;
    it=std::set_difference(set_a.begin(), set_a.end(), set_b.begin(), set_b.end(), difference.begin());
    difference.resize(it-difference.begin());

    return difference;
}

void
ConfigurationIndistinguishability::perform_quantification_step(const Settings *settings, std::pair<ADD, ADD> &frequency, std::vector<int> &trans_terms, int var, State *state, unsigned int inst_num)
{
    // Determine transition terms
    std::vector<BDD> trans;

    for (auto t : trans_terms) {
        /* Create new variable (only if necessary / not created before) */
        BDD new_var;
        #pragma omp critical
        {
            if (state->m_externally_created_bdds.find(state->m_netlist_model->wires().at(t).get()) == state->m_externally_created_bdds.end()) {
                new_var = state->m_managers[inst_num].bddVar();
                state->m_externally_created_bdds[state->m_netlist_model->wires().at(t).get()] = new_var.NodeReadIndex();
            } else {
                new_var = state->m_managers[inst_num].bddVar(state->m_externally_created_bdds[state->m_netlist_model->wires().at(t).get()]);
            }
        }

        trans.push_back(!(new_var ^ m_stage_connection[t]->functions(inst_num)));
    }

    if(!trans.empty()) {
        // Multiply transition terms
        BDD result; tree_based_multiplication(result, trans);
        ADD transition_function = result.Add();

        state->m_managers[inst_num].AutodynEnable(CUDD_REORDER_SIFT);

        // Update frequencies
        frequency.first = frequency.first * transition_function;
        frequency.second = frequency.second * transition_function;

        state->m_managers[inst_num].AutodynDisable();

        if (settings->getReordering())
            state->m_managers[inst_num].ReduceHeap();
    }

    // Extract cube
    ADD add_var = state->m_netlist_model->get_wire(var)->functions(inst_num).Add();
    ADD abst = add_var.Support().Add();

    frequency.first = frequency.first.ExistAbstract(abst);
    frequency.second = frequency.second.ExistAbstract(abst);
}
