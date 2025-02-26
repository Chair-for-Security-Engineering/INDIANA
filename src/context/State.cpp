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

#include "context/State.hpp"

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

State::State()
{

}

/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

State::~State()
{
    /* Delete gate_types objects */
    for(auto gate_type : this->m_cell_library->gate_types()){
        if(gate_type.second != nullptr){
            delete gate_type.second;
        }
    }

    /* Delete m_cell_library object */
    if(this->m_cell_library != nullptr){
        delete this->m_cell_library;
        this->m_cell_library = nullptr;
    }

    /* Delete m_netlist_model object */
    if(this->m_netlist_model != nullptr){
        delete this->m_netlist_model;
        this->m_netlist_model = nullptr;
    }
}

/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void
State::create_dd_managers(unsigned int num, unsigned int memory, bool enable_reordering){
    // Create multiple CUDD managers
    for(unsigned int i=0;i<num;i++){
        this->m_managers.push_back(Cudd_Manager(0,0,1<<8,1<<16,memory*1024*1024*1024ull));

        // Enable auto-dynamic reordering
        if (enable_reordering) this->m_managers[i].AutodynEnable(CUDD_REORDER_SIFT);
    }
}
