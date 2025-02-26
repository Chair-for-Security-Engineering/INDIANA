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

#include "parser/Parser.hpp"
#include "parser/ConfigurationSage.hpp"

#include "netlist/CellTemplate.hpp"
#include "netlist/Netlist.hpp"
#include "netlist/Module.hpp"
#include "netlist/Pin.hpp"

#include <string>
#include <vector>

void
ConfigurationSage::initialize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationSage::execute(const Settings *settings, State *state)
{
    /* Variable declarations */
    std::vector<std::string> tokens;
    std::string line;
    std::map<std::string,verica::Wire*> wires;

    int number_of_shares = 0;
    int wire_cnt = 0, gate_cnt = 0;

    /* Create netlist container */
    state->m_netlist_model = new verica::Netlist(settings->getDesignFilePath());

    /* Create top-level module */
    verica::Module *top = state->m_netlist_model->add_module("topmodule");
    state->m_netlist_model->set_topmodule(top);
    state->m_netlist_model->set_module_under_test(top, 0);

    /* Open circuit description text file. */
    std::ifstream description(settings->getDesignFilePath());

    while(std::getline(description, line)) {
        tokens = Parser::split(line, ' ');

        /* Skip empty lines */
        if (tokens.size() > 0) {
            if (tokens[0] == "#ORDER") {
                // Skip
            } else if (tokens[0] == "#SHARES") {
                number_of_shares = std::stoi(tokens[1]);
            } else if (tokens[0] == "#IN") {
                for (size_t share_index = 1; share_index < tokens.size(); share_index++) {
                    for (int share_domain = 0; share_domain < number_of_shares; share_domain++) {

                        /* Construct pin name */
                        std::string name = tokens[share_index] + std::to_string(share_domain);

                        /* Create new input pin - set gate identifier to 10 (marks input gates) */
                        verica::Pin *p = state->m_netlist_model->add_pin(name, top, true, 10);

                        /* Add share annotations */
                        state->m_netlist_model->set_pin_share_index(p->uid(), share_index);
                        state->m_netlist_model->set_pin_share_domain(p->uid(), share_domain);

                        /* Add new wire to circuit netlist */
                        verica::Wire *w = state->m_netlist_model->add_wire(name, top, share_index * number_of_shares + share_domain);
                        wires[name] = w;

                        /* Set pin as wire source */
                        state->m_netlist_model->set_wire_source(w->uid(), p->uid());
                    }
                }
            } else if (tokens[0] == "#RANDOMS") {
                for (size_t index = 1; index < tokens.size(); index++) {     

                    /* Construct pin name */
                    std::string name = tokens[index];

                    /* Create new input pin  - set gate identifier to 10 (marks input gates) */
                    verica::Pin *p = state->m_netlist_model->add_pin(name, top, true, 10);
                    
                    /* Assign pin type: refresh */
                    state->m_netlist_model->set_pin_type(p, verica::Refresh);

                    /* Add new wire to circuit netlist */
                    verica::Wire *w = state->m_netlist_model->add_wire(name, top, -1);
                    wires[name] = w;
                    
                    /* Set pin as wire source */
                    state->m_netlist_model->set_wire_source(w->uid(), p->uid());
                }
            } else if (tokens[0] == "#OUT") {
                for (size_t share_index = 1; share_index < tokens.size(); share_index++) {
                    for (int share_domain = 0; share_domain < number_of_shares; share_domain++) {

                        /* Construct pin name */
                        std::string name = tokens[share_index] + std::to_string(share_domain);

                        /* Create new output pin */
                        verica::Pin *p = state->m_netlist_model->add_pin(name, top, false);

                        /* Add share annotations */
                        state->m_netlist_model->set_pin_share_index(p->uid(), share_index);
                        state->m_netlist_model->set_pin_share_domain(p->uid(), share_domain);
                        
                        /* Add new wire to circuit netlist */
                        verica::Wire *w = state->m_netlist_model->add_wire(name, top, -1);
                        wires[name] = w;

                        /* Set pin as wire target */
                        state->m_netlist_model->set_wire_target(w->uid(), p->uid());
                    }
                }

                state->m_num_output_shares = (tokens.size() - 1) * number_of_shares; 

            } else if (tokens.size() == 3) {
                /* Create new buffer gate */
                verica::Module *gate = state->m_netlist_model->add_module("buf" + std::to_string(gate_cnt++), top, CellTemplate({0}, "buf", {"A"}, {"B"}, {"A"}, false));

                if (wires.find(tokens[0]) != wires.end()) {
                    /* Store old source pin */
                    const verica::Pin* old = wires[tokens[0]]->source_pin();

                    /* Reconnect output wire*/
                    state->m_netlist_model->set_wire_source(wires[tokens[0]]->uid(), gate->output_pins()[0]->uid());

                    /* Connect input wire */
                    std::string name = tokens[0] + "_" + std::to_string(wire_cnt++);
                    verica::Wire* wire = state->m_netlist_model->add_wire(name, top);
                    state->m_netlist_model->set_wire_source(wire->uid(), old->uid());
                    state->m_netlist_model->set_wire_target(wire->uid(), gate->input_pins()[0]->uid());
                } else {
                    /* Connect output wire */
                    std::string name = tokens[0];
                    verica::Wire* wire = state->m_netlist_model->add_wire(name, top);
                    state->m_netlist_model->set_wire_source(wire->uid(), gate->output_pins()[0]->uid());
                    wires[name] = wire;

                    /* Connect input wire */
                    state->m_netlist_model->set_wire_target(wires[tokens[2]]->uid(), gate->input_pins()[0]->uid());
                }
            } else {
                /* Create new computation gate */
                verica::Module *gate;
                if (tokens[3] == "+") gate = state->m_netlist_model->add_module("xor" + std::to_string(gate_cnt++), top, CellTemplate({6}, "xor", {"A", "B"}, {"C"}, {"(A ^ B)"}, false));
                if (tokens[3] == "*") gate = state->m_netlist_model->add_module("and" + std::to_string(gate_cnt++), top, CellTemplate({2}, "and", {"A", "B"}, {"C"}, {"(A & B)"}, false));

                if (wires.find(tokens[0]) != wires.end()) {

                    /* Store old source pin */
                    const verica::Pin* old = wires[tokens[0]]->source_pin();

                    /* Connect input wire */
                    if (tokens[0] == tokens[2]) {
                        std::string name = tokens[0] + "_" + std::to_string(wire_cnt++);
                        verica::Wire* wire = state->m_netlist_model->add_wire(name, top);
                        state->m_netlist_model->set_wire_source(wire->uid(), old->uid());
                        state->m_netlist_model->set_wire_target(wire->uid(), gate->input_pins()[0]->uid());
                        state->m_netlist_model->set_wire_target(wires[tokens[4]]->uid(), gate->input_pins()[1]->uid());

                        /* Reconnect output wire*/
                        state->m_netlist_model->set_wire_source(wires[tokens[0]]->uid(), gate->output_pins()[0]->uid());
                    } else if (tokens[0] == tokens[4]) {
                        std::string name = tokens[0] + "_" + std::to_string(wire_cnt++);
                        verica::Wire* wire = state->m_netlist_model->add_wire(name, top);
                        state->m_netlist_model->set_wire_source(wire->uid(), old->uid());
                        state->m_netlist_model->set_wire_target(wires[tokens[2]]->uid(), gate->input_pins()[0]->uid());
                        state->m_netlist_model->set_wire_target(wire->uid(), gate->input_pins()[1]->uid());
                        
                        /* Reconnect output wire*/
                        state->m_netlist_model->set_wire_source(wires[tokens[0]]->uid(), gate->output_pins()[0]->uid());
                    } else {
                        if (std::find(top->output_pins().begin(), top->output_pins().end(), wires[tokens[0]]->target_pins()[0]) != top->output_pins().end()) {
                            /* Reconnect output wire*/
                            state->m_netlist_model->set_wire_source(wires[tokens[0]]->uid(), gate->output_pins()[0]->uid());
                        } else {
                            /* Create new wire*/
                            verica::Wire* wire = state->m_netlist_model->add_wire(tokens[0], top);
                            wires[tokens[0]] = wire;

                            /* Connect wire to gate output pin */
                            state->m_netlist_model->set_wire_source(wire->uid(), gate->output_pins()[0]->uid());
                        }

                        /* Connect wires to gate input pins */
                        state->m_netlist_model->set_wire_target(wires[tokens[2]]->uid(), gate->input_pins()[0]->uid());
                        state->m_netlist_model->set_wire_target(wires[tokens[4]]->uid(), gate->input_pins()[1]->uid());
                    }
                } else {
                    /* Create new wire*/
                    verica::Wire* wire = state->m_netlist_model->add_wire(tokens[0], top);
                    wires[tokens[0]] = wire;

                    /* Connect wire to gate output pin */
                    state->m_netlist_model->set_wire_source(wire->uid(), gate->output_pins()[0]->uid());

                    /* Connect wires to gate input pins */
                    state->m_netlist_model->set_wire_target(wires[tokens[2]]->uid(), gate->input_pins()[0]->uid());
                    state->m_netlist_model->set_wire_target(wires[tokens[4]]->uid(), gate->input_pins()[1]->uid());
                }
            }
        }
    }
}

void
ConfigurationSage::finalize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationSage::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Print logger header */
    logger->header("DESIGN UNDER TEST");

    /* Report parsing results */
    logger->log(service, this->m_name, "source: " + settings->getDesignFilePath());
    if (settings->getVerbose() >= VINFO) {
        logger->log(service, this->m_name, ITEM + "module(s) : " + std::to_string(state->m_netlist_model->num_modules()));
        logger->log(service, this->m_name, ITEM + "gate(s)   : " + std::to_string(state->m_netlist_model->num_gates()));
        logger->log(service, this->m_name, ITEM + " - comb.  : " + std::to_string(state->m_netlist_model->num_combinational_gates()));
        logger->log(service, this->m_name, ITEM + " - seq.   : " + std::to_string(state->m_netlist_model->num_sequential_gates()));
        logger->log(service, this->m_name, ITEM + "wire(s)   : " + std::to_string(state->m_netlist_model->num_wires()));
        logger->log(service, this->m_name, ITEM + "pin(s)    : " + std::to_string(state->m_netlist_model->num_pins()));
    }

    /* Print logger header */
    logger->footer(service, this->m_name, SUCCESS);
}
