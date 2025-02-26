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

#ifndef __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_PROBING_HPP_
#define __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_PROBING_HPP_

#include "analyzer/ConfigurationIndistinguishability.hpp"

class ConfigurationIndistinguishabilityProbing : public ConfigurationIndistinguishability
{
    public:
    
        ConfigurationIndistinguishabilityProbing(std::string name) : ConfigurationIndistinguishability(name) { };

        /* Initialize analysis for given context & configuration */
        void initialize(const Settings *settings, State *state) override;

        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        /* Insert failing probes of external configuration into this configuration*/
        void insert(const ConfigurationIndistinguishabilityProbing* configuration);

        /* Accessor function(s) */
        // const bool& indistinguishable() const { return this->m_indistinguishable; }
        const std::vector<std::vector<const verica::Wire*>>& failing_probes() const { return this->m_failing_probes; };

    private:

        /** 
         * Creates indistinguishable sets from a vector of transition terms stored in m_transition_terms. 
         * The indistinguishable sets will be stored in m_indistinguishable_sets.
         *
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
         * @param transition_terms Vector of transition terms.
         * 
         * @returns Returns a vector of indices corresponding to the indistinguishable sets.
         */
        std::vector<std::vector<const verica::Wire*>> create_indistinguishable_sets(const Settings *settings, State *state, std::vector<const verica::Wire*> &probes, unsigned int inst_num);

        /** 
         * Checks if a given set is indistinguishable from the inputs of the current module under test.
         *
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
         * @param set A set of BDDs which should be checked for indistinguishability. 
         * @param inst_num Working instantiation.
         */
        bool indistinguishable(State *state, std::set<int> &set, unsigned int &inst_num);

        /** 
         * Creates all valid combinations of d probes from data. It is ensured that not all
         * d probes are selected from the same bucket.
         *
         * @param d Number of sets that should be considered to create combinations.
         * @param data Input data.
         * @param permuted_data Vector of valid combinations. 
         */        
        void create_combinations(unsigned int d, std::vector<std::vector<const verica::Wire*>> &data, std::vector<std::vector<const verica::Wire*>> &permuted_data);


        unsigned int m_max_order;                                                                       /**< Maximum security order for current design */

        // bool m_indistinguishable = true;                                                                /**< Indistinguishability for current stage of probes */
                
        /* Container for failing probe combinations */
        std::vector<std::vector<std::vector<const verica::Wire*>>> m_failing_probes_multithreading;     /**< Container for failing probe combinations collected for each thread separately */
        
        std::vector<std::vector<const verica::Wire*>> m_failing_probes;                                 /**< Container for failing probe combinations */
};

#endif // __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_PROBING_HPP_