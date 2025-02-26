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
#include "preprocessor/ConfigurationFiltering.hpp"

void
ConfigurationFiltering::initialize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationFiltering::execute(const Settings *settings, State *state)
{
    /* Apply filtering for SCA */
    if (settings->getSideChannelFilteringType() == "white") {
        this->apply_filter(settings, state, false);
    } else if (settings->getSideChannelFilteringType() == "black") {
        this->apply_filter(settings, state, true);
    } else if (settings->getSideChannelFilteringType() != "none") {
        throw std::logic_error("Unrecognized filtering strategy (supported strategies: none/whitelist/blacklist)!");
    } else {
        clear_filter(state);
    }
}

void
ConfigurationFiltering::finalize(const Settings *settings, State *state)
{
    (void)settings;
    (void)state;
}

void
ConfigurationFiltering::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Print header */
    logger->header("FILTERING");

    /* SCA Filtering */
    if (settings->getSideChannelFilteringType() != "none") {
        logger->log(service, this->m_name, "Filtering for side-channel verification:");

        /* Print results */
        if (settings->getSideChannelFilteringType() == "white") {
            logger->log(service, this->m_name, ITEM + "source: " + settings->getSideChannelWhiteList());
        } else {
            logger->log(service, this->m_name, ITEM + "source: " + settings->getSideChannelBlackList());
        }

        if (settings->getVerbose() >= VINFO) {
            logger->log(service, this->m_name, "ignoring: ");

            logger->log(service, this->m_name, ITEM + "module(s) : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [](const std::pair<const int, std::unique_ptr<verica::Module>> &m){ return m.second->sca_ignore() && !m.second->gate();})));

            logger->log(service, this->m_name, ITEM + "gate(s)   : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [](const std::pair<const int, std::unique_ptr<verica::Module>> &m){ return m.second->sca_ignore() && m.second->gate();})));

            logger->log(service, this->m_name, ITEM + "wire(s)   : " + std::to_string(std::count_if(state->m_netlist_model->wires().begin(), state->m_netlist_model->wires().end(), [](const std::pair<const int, std::unique_ptr<verica::Wire>> &w){ return w.second->sca_ignore();})));
        }
    } else {
        logger->log(service, this->m_name, "Filtering for side-channel verification is disabled!");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}

void
ConfigurationFiltering::clear_filter(State *state) {
    /* Clear filtered gates */
    state->m_netlist_model->ignore_sca_module(state->m_netlist_model->topmodule()->uid(), false);
}

void
ConfigurationFiltering::apply_filter(const Settings *settings, State *state, const bool blacklist_filter){
    std::string line, list_path;
    std::vector<std::string> tokens, filter;

    /* Determine list path */
    if (blacklist_filter) {
        list_path = settings->getSideChannelBlackList();
    } else{
        list_path = settings->getSideChannelWhiteList();
    }

    /* Open blacklist/whitelist filter */
    std::ifstream filterStream(list_path);

    /* Loop over all lines and all names per line */
    while (std::getline(filterStream, line)) {
        /* Split line into space-separated tokens */
        tokens = Parser::split(line, ' ');

        /* Create blacklist-filter for gates based on gate names */
        if (tokens[0].at(0) != '#') {
            filter.insert(filter.end(), tokens.begin(), tokens.end());
        }
    }

    /* Remove line endings from blacklist-filter */
    for (unsigned int idx = 0; idx < filter.size(); ++idx) {
        filter[idx].erase(std::remove(filter[idx].begin(), filter[idx].end(), '\n'), filter[idx].end());
        filter[idx].erase(std::remove(filter[idx].begin(), filter[idx].end(), '\r'), filter[idx].end());
    }

    /* Remove empty strings from filter */
    filter.erase(std::remove_if(filter.begin(), filter.end(), [](std::string str){return str.empty();}), filter.end());

    /* Filter gates based on blacklist-filter */
    state->m_netlist_model->ignore_sca_module(state->m_netlist_model->topmodule()->uid(), !blacklist_filter);

    for (auto& module : state->m_netlist_model->modules()) {
        for (auto name : filter) {
            if(module.second->name().find(name) != std::string::npos) {
                state->m_netlist_model->ignore_sca_module(module.second->uid(), blacklist_filter);
            }
        }
    }

    for (auto& p : state->m_netlist_model->module_under_test(0)->input_pins()) {
        for (auto name : filter) {
            if (p->fan_out() != nullptr) {
                if (p->fan_out()->name().find(name) != std::string::npos) {
                    state->m_netlist_model->ignore_sca_wire(p->fan_out()->uid(), blacklist_filter);
                }
            }
        }
    }
}
