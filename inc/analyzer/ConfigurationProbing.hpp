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

#ifndef __INDIANA_ANALYZER_CONFIGURATION_PROBING_HPP_
#define __INDIANA_ANALYZER_CONFIGURATION_PROBING_HPP_

#include "Configuration.hpp"

class ConfigurationProbing : public Configuration
{
    public:
    
        ConfigurationProbing(std::string name) : Configuration(name) { };

        /* Initialize analysis for given context & configuration */
        void initialize(const Settings *settings, State *state) override;

        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        /* Insert failing probes of external configuration into this configuration*/
        void insert(const ConfigurationProbing* configuration);

        /* Accessor function(s) */
        const bool& independent() const { return this->m_independent; }
        
        const std::vector<std::vector<const verica::Wire*>>& failing_probes() const { return this->m_failing_probes; };
        const std::vector<std::vector<const verica::Wire*>> & leaking_combinations() const { return this->m_leaking_combinations; };

        /* Mutator function(s) */
        void current_probes(const std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>> current_probes) { this->m_current_probes = current_probes.first; };


    private:
        
        unsigned int m_max_order;                                           /**< Maximum security order for current design */
        bool m_independent;                                                 /**< Statistical independence for current probe combination */
        std::vector<const verica::Wire*> m_current_probes;                  /**< Container for current probe combination */
        std::vector<std::vector<const verica::Wire*>> m_failing_probes;     /**< Container for failing probe combinations */

        /* Container for failing probe combinations under fault injections */ 
        std::vector<std::vector<const verica::Wire*>> m_leaking_combinations;  // contains combinations of probes and faults
};

#endif // __INDIANA_ANALYZER_CONFIGURATION_PROBING_HPP_
