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

#include "partitioner/ConfigurationBreadth.hpp"
#include "util.hpp"

void
ConfigurationBreadth::initialize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state;    // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}

void
ConfigurationBreadth::execute(const Settings *settings, State *state) {
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state;    // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.

    /* Something */
    std::cout << "Nothing to execute currently..." << std::endl;
}

void
ConfigurationBreadth::finalize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state;    // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}


void
ConfigurationBreadth::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    (void)state;    // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.

    /* Print header */
    logger->header("PARTITIONER");

    if(settings->getVerbose() > 0){
        logger->log(service, this->m_name, "Not yet implemented...");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);

}
