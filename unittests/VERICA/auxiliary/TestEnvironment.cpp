/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr University Bochum
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2024/833.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Niklas Entschladen
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

#ifdef UNITTEST
#include <boost/algorithm/string/predicate.hpp>
#include <stdexcept>

#include "unittest/TestEnvironment.hpp"

#include "parser/ConfigurationLibrary.hpp"
#include "parser/ConfigurationNetlist.hpp"
#include "parser/ConfigurationVerilog.hpp"

#include "preprocessor/ConfigurationFiltering.hpp"
#include "preprocessor/ConfigurationMultithreading.hpp"
#include "preprocessor/ConfigurationAnnotation.hpp"
#include "preprocessor/ConfigurationModelPostprocessing.hpp"
#include "preprocessor/ConfigurationElaborate.hpp"
#include "preprocessor/ConfigurationSCA.hpp"

#include "composer/NetlistComposer.hpp"

/*
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

TestEnvironment::TestEnvironment(int argc, char * argv[]) :
    Environment(argc, argv),
    execPhase{execPhases::COMPLETE}             /* Enable full evaluation */
{

    //NOTE: Initialize phase is part of Environment
    this->m_state->create_dd_managers(this->m_settings->getCores(), this->m_settings->getMemory(), this->m_settings->getReordering());

    /* Execute evaluation */
    this->execute();
}

TestEnvironment::TestEnvironment(int argc, char * argv[], TestEnvironment::execPhases execPhase) :
    Environment(argc, argv),
    execPhase{execPhase}                        /* Registering phase after which evaluation stops */
{
    //NOTE: Initialize phase is part of Environment
    this->m_state->create_dd_managers(this->m_settings->getCores(), this->m_settings->getMemory(), this->m_settings->getReordering());

    /* Execute evaluation */
    this->execute();
}

/*
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */

void
TestEnvironment::execute()
{
    if (this->execPhase == execPhases::NONE) { return; }

    /* Design cell library parser configuration & execution */
    ConfigurationLibrary configLibrary{"CELLLIB"};
    this->m_parser->configure(&configLibrary);
    this->m_parser->execute();

    if (this->execPhase == execPhases::CELLLIB) { return; }

    /* Design parser configuration & execution */
    if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".v")){
        ConfigurationVerilog configVerilog{"VERILOG"};
        this->m_parser->configure(&configVerilog);
        this->m_parser->execute();
    }
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".nl")){
        ConfigurationNetlist configNetlist{"NETLIST"};
        this->m_parser->configure(&configNetlist);
        this->m_parser->execute();
    }

    // NetlistComposer* nc = new NetlistComposer("COMPOSER");
    // nc->execute(this->m_settings, this->m_state);

    if (this->execPhase == execPhases::PARSER) { return; }

    /* Preprocessor configuration & execution */
    ConfigurationAnnotation configAnnotation{"ANNOTATION"};
    this->m_preprocessor->configure(&configAnnotation);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::ANNOTATION) { return; }

    ConfigurationFiltering configFiltering{"FILTERING"};
    this->m_preprocessor->configure(&configFiltering);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::FILTERING) { return; }

    ConfigurationMultithreading configMultithreading{"MULTI-THREADING"};
    this->m_preprocessor->configure(&configMultithreading);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::MULTI_THREADING) { return; }

    ConfigurationModelPostprocessing configModelPostprocessing{"MODEL POSTPROCESSING"};
    this->m_preprocessor->configure(&configModelPostprocessing);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::MODEL_POSTPROCESSING) { return; }

    ConfigurationElaborate configElaborate{"ELABORATE"};
    this->m_preprocessor->configure(&configElaborate);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::ELABORATE) { return; }

    ConfigurationSCA sca_preprocessor{"SCA"};
    this->m_preprocessor->configure(&sca_preprocessor);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::SCA || this->execPhase == execPhases::COMPLETE) { return; }
}

Logger*
TestEnvironment::getLogger() { return this->m_logger; }

void
TestEnvironment::setLogger(Logger* logger) {
    this->m_logger = logger;
    initialize();
}

Settings*
TestEnvironment::getSettings() { return this->m_settings; }

void
TestEnvironment::setSettings(Settings* settings) {
    this->m_settings = settings;
    initialize();
}

State*
TestEnvironment::getState() { return this->m_state; }

void
TestEnvironment::setState(State* state) {
    this->m_state = state;
    initialize();
}

Parser*
TestEnvironment::getParser() { return this->m_parser; }

void
TestEnvironment::setParser(Parser* parser) {
    this->m_parser = parser;
    initialize();
}

Preprocessor*
TestEnvironment::getPreprocessor() { return this->m_preprocessor; }

void
TestEnvironment::setPreprocessor(Preprocessor* preprocessor) {
    this->m_preprocessor = preprocessor;
    initialize();
}

Analyzer*
TestEnvironment::getAnalyzer() { return this->m_analyzer; }

void
TestEnvironment::setAnalyzer(Analyzer* analyzer) {
    this->m_analyzer = analyzer;
    initialize();
}
#endif
