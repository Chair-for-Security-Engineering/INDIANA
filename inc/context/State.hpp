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

#ifndef __INDIANA_CONTEXT_STATE_HPP_
#define __INDIANA_CONTEXT_STATE_HPP_

#include "netlist/Netlist.hpp"
#include "context/CellLibrary.hpp"

class State
{
    public:

        /* Constructor */
        State();

        /* Destructor */
        ~State();

        /* 
        * =========================================================================================
        * Member functions
        * =========================================================================================
        */
        /**
        * @brief Creates new CUDD managers
        * @param num Number of managers that should be added to the m_manager container.
        * @param memory Memory size per manager.
        * @param enable_reordering Enable/disable dynamic reordering in the CUDD library.
        */ 
        void create_dd_managers(unsigned int num, unsigned int memory, bool enable_reordering);


        /* 
        * =========================================================================================
        * Member variables
        * =========================================================================================
        */
        /* Cell Library */
        CellLibrary* m_cell_library = new CellLibrary();

        /* Netlist */
        verica::Netlist *m_netlist_model = nullptr;

        /* SCA: Sharing details */
        std::map<int, std::vector<const verica::Wire*>> m_shared_inputs;
        std::vector<const verica::Wire*> m_min_shared_inputs;
        std::vector<const verica::Wire*> m_shared_variables;

        std::map<int, std::vector<const verica::Pin*>> m_shared_outputs;
        std::vector<const verica::Pin*> m_min_shared_outputs;
        unsigned int m_num_output_shares = 0;

        /* Indistinguishability details */
        std::map<unsigned int, unsigned int> m_core_to_inst;
        std::map<const verica::Wire*, int> m_externally_created_bdds;

        /* SCA: Partitions */
        std::vector<std::vector<const verica::Module*>> m_sca_partitions;
        std::vector<std::vector<std::vector<int>>> m_partition_combinations;

        /* SCA: Probe combinations */
        // std::vector<std::vector<std::vector<const verica::Wire*>>> m_probe_combinations;
        std::vector<std::vector<const verica::Wire*>> m_probe_positions_indistinguishability;

        // first entry in the pair contains all real probes while the second entry contains all "virtual" probes (e.g., for simulating abort signals)
        std::vector<std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>>> m_probe_combinations;

        /* CUDD manager */
        std::vector<Cudd_Manager> m_managers;

        /* Detection-based */
        std::vector<const verica::Wire*> m_error_flags;
        std::vector<const verica::Wire*> m_data_output_wires;

        int m_mut_input_size = 0;
        std::vector<const verica::Wire*> m_mut_outputs;

        /* Precomputations SIFA and SFA */
        std::vector<std::vector<BDD>> m_unshared_output_combinations;

        /* Probe Pair for Visualization */
        std::vector<const verica::Wire*> m_visualization_probes;

        /* Reporting */
        // store leaking probes of different strategies 
        std::vector<std::vector<const verica::Wire*>> m_leaking_probes_sca;

        // store leaking combinations of probes
        std::vector<std::vector<const verica::Wire*>> m_leaking_combinations_sca;
};

#endif // __INDIANA_CONTEXT_STATE_HPP_
