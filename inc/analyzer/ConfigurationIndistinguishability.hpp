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

#ifndef __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_HPP_
#define __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_HPP_

#include "Configuration.hpp"

class ConfigurationIndistinguishability : public Configuration
{
    public:
        ConfigurationIndistinguishability(std::string name) : Configuration(name)
        {
        }

        /* Initialize analysis for given context & configuration */
        virtual void initialize(const Settings *settings, State *state);

        /* Perform analysis for given context & configuration */
        virtual void execute(const Settings *settings, State *state)
        {
            (void)settings;
            (void)state;
        }

        /* Finalize analysis for given context & configuration */
        virtual void finalize(const Settings *settings, State *state);

        /* Report analysis results for given context & configuration */
        virtual void report(std::string service, const Logger *logger, const Settings *settings, State *state) const
        {
            (void)service;
            (void)logger;
            (void)settings;
            (void)state;
        }

        /* Accessor function(s) */
        const std::pair<ADD, ADD> frequencies() const { return m_frequency; };

        /* Mutator function(s) */
        void frequencies(std::pair<ADD, ADD> frequencies) { m_frequency = frequencies; };
        void clear_frequencies(Cudd_Manager &manager) { m_frequency = {manager.addOne(), manager.addOne()}; };

    protected:
        /** 
         * Computes a matrix from inputs indices (map keys) to a vector of probe indices (map entries).
         *
         * @param state Pointer to the state.
         * @param probes Vector of probed wires (outputs of the matrix).
         * @param inst_num Working instantiation.
         * 
         * @returns Matrix stored as map.
         */
        std::map<int, std::set<int>> inputs_to_probes_matrix(State *state, std::vector<const verica::Wire*> probes, int inst_num);

        /** 
         * Computes a matrix from inputs indices (map keys) to a vector of output indices (map entries).
         *
         * @param state Pointer to the state.
         * @param inst_num Working instantiation.
         * 
         * @returns Matrix stored as map.
         */
        std::map<int, std::set<int>> inputs_to_outputs_matrix(State *state, int inst_num);

        /** 
         * Performs transition of intial frequencies to output frequencies for a list of target wires.
         *
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
         * @param transition Matrix from inputs to probes/outputs for the current state transition.
         * @param frequencies Pair of initial frequencies (f0: all frequencies, f1: single frequency) input to the probed circuit.
         * 
         * @returns The computed pair of wire state frequencies (f0: all frequencies, f1: single frequency).
         */
        std::pair<ADD, ADD> transition_relation(const Settings *settings, State *state, std::map<int, std::set<int>> transition, std::pair<ADD, ADD> frequencies, int inst_num);

        /** 
         * Performs a quantification step (with respect to var) including an update of the frequencies by incorporating new transition terms (trans_terms).
         * More precisely, in case trans_terms is not empty, the transition terms in trans_terms are all multiplied using the tree-based multiplication.
         * Afterwards, all frequencies are updated by multiplying (on ADDs) them with the product of the transition terms. Given that all frequencies
         * can be quantified with respect for the input variable indexed by var.
         *
         * @param trans_terms Index list to output wires of the current logic stage that should be used to compute the transition terms.
         * @param var Index of the variable that should be quantified.
         * @param state Pointer to the state. 
         * @param inst_num Working instantiation.
         */        
        void perform_quantification_step(const Settings *settings, std::pair<ADD, ADD> &frequency, std::vector<int> &trans_terms, int var, State *state, unsigned int inst_num);

        /** 
         * Multiplies all BDDs given in terms in a tree-based fashion. This ensures that there are multiple BDDs in parallel and not only
         * one BDD that increases with each term that is multiplied to the intermediate result. However, the result has the same complexity.
         *
         * @param result Contains the result of the product of all terms included in terms.
         * @param terms Includes all the terms that should be multiplied.
         */     
        void tree_based_multiplication(BDD &result, std::vector<BDD> &terms);

        /** 
         * Computes the difference between set_a and set_b. E.g., { 1 2 5 9 } ∖ { 2 5 7 } = { 1 9 } where set_a = { 1 2 5 9 } and set_b = { 2 5 7 }
         *
         * @param set_a Set A of integers.
         * @param set_b Set B of integers.
         */           
        std::vector<int> set_minus(std::set<int> &set_a, std::set<int> &set_b);



        std::pair<ADD, ADD> m_frequency;                                                                /**< Container for frequencies divided into partitions*/

        unsigned int m_num_partitions;                                                                  /**< Number of partitions in current logic stage */

        std::vector<const verica::Wire*> m_current_probes;                                              /**< Container for current probe combination */

        std::vector<std::set<int>> m_secrets;                                                           /**< Container for secrets influencing the different partitions */

        std::set<int> m_input_variables;                                                                /**< Container for input variables divided into partitions */

        std::map<int, const verica::Wire*> m_stage_connection;                                          /**< Container to store the connection between the inputs of the next stage (int) and the output wire of the current stage (const verica::Wire*)*/
};

#endif // __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_PROBING_HPP_
