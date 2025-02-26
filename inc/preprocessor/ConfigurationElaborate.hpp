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

#ifndef __INDIANA_PREPROCESSOR_CONFIGURATION_ELABORATE_HPP_
#define __INDIANA_PREPROCESSOR_CONFIGURATION_ELABORATE_HPP_

#include "Configuration.hpp"

class ConfigurationElaborate : public Configuration
{
    public:
        ConfigurationElaborate(std::string name) : Configuration(name) { };

        /* Initialize strategy */
        void initialize(const Settings *settings, State *state) override;

        /* Elaborate design for given settings */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;
        
        /* Report elaborate results */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        // void set_instantiation_number(unsigned int idx);

    private: TESTABLE

        // /**
        // * @brief Elaborates a circuit model for each gate.
        // * @param model Circuit model to be elaborated.
        // * @param manager Cudd manager.
        // * @param core Thread number.
        // * @param masking Indicates the masking type.
        // */       
        // void elaborate(State *state, verica::Netlist* model, Cudd_Manager &manager, int core, int masking);

        /**
        * @brief Evaluates the BDD of wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param manager Corresponding Cudd manager.
        * @param core Working thread.
        */  
        void gate_store_functions(verica::Netlist* model, const verica::Wire* wire, Cudd_Manager &manager, State *state);
        
        /**
        * @brief Determines the registers that influence wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param core Working thread.
        */ 
        void gate_store_registers(verica::Netlist* model, const verica::Wire* wire);

        /**
        * @brief Determines the stage variables that influence wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param manager Corresponding Cudd manager.
        * @param core Working thread.
        */         
        void gate_store_stage_variables(verica::Netlist* model, const verica::Wire* wire);
        
        /**
        * @brief Determines the secrets that influence wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param secrets Mapping of the secrets.
        * @param manager Corresponding Cudd manager.
        * @param core Working thread.
        */ 
        void gate_store_secrets(verica::Netlist* model, const verica::Wire* wire, std::map<int, BDD> secrets, Cudd_Manager &manager);

        /**
        * @brief ToDO
        */ 
        std::map<int, std::vector<BDD>> netlistToMap(verica::Netlist* model, Cudd_Manager &manager);

        /**
        * @brief Performs boolean masking.
        */       
        std::map<int, BDD> booleanMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs);

        /**
        * @brief Performs additive masking.
        */       
        std::map<int, BDD>* additiveMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs);

        /* Member variables */
        unsigned int m_inst_num;
};

#endif // __INDIANA_PREPROCESSOR_CONFIGURATION_ELABORATE_HPP_