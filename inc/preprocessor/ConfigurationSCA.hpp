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

#ifndef __INDIANA_PREPROCESSOR_CONFIGURATION_SCA_HPP_
#define __INDIANA_PREPROCESSOR_CONFIGURATION_SCA_HPP_

#include "Configuration.hpp"

class ConfigurationSCA : public Configuration
{
    public:
        ConfigurationSCA(std::string name) : Configuration(name) { };

        /* Initialize strategy */
        void initialize(const Settings *settings, State *state) override;

        /* Filter design for given settings */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;
        
        /* Report filter results */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        /* Update */
        void update (State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int reduce_order, const int thread_num);

    private: TESTABLE

        /**
        * @brief Determines wires in the model that should be used as probe positions.
        * @param state Pointer to the state.
        * @param settings Pointer to the settings.
        */ 
        void determine_probe_positions(State *state, const Settings *settings);

        /**
        * @brief Computes all valid probe combinations. The function also incorporates modified paths due to fault injections 
        *        by adapting new probe combinations accordingly (i.e., only probes that are effected by the fault injection are considered)
        * @param state Pointer to the state.
        * @param settings Pointer to the settings.
        * @param modified Vector of modified wires (due to fault injections).
        * @param reduce_order Reduces the order (i.e., number of probes per probe combination). This is required for combined analysis, e.g., C-NI.
        */ 
        void update_probe_combinations(State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int reduce_order, const int thread_num);

        /**
        * @brief Computes all valid probe combinations. The function also incorporates modified paths due to fault injections 
        *        by adapting new probe combinations accordingly (i.e., only probes that are effected by the fault injection are considered)
        * @param state Pointer to the state.
        * @param settings Pointer to the settings.
        * @param modified Vector of modified wires (due to fault injections).
        * @param reduce_order Reduces the order (i.e., number of probes per probe combination). This is required for combined analysis, e.g., C-NI.
        */ 
        void update_probe_combinations_indistinguishability(State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int reduce_order);


        /* Holds all possible probe positions */
        std::vector<const verica::Wire*> m_positions;
        std::vector<std::vector<const verica::Wire*>> m_stage_positions;

        /* Holds all combinations of abort signals */
        std::vector<std::vector<const verica::Wire*>> m_abort_signals;
        
};

#endif // __INDIANA_PREPROCESSOR_CONFIGURATION_SCA_HPP_