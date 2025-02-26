/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr University Bochum
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2024/833.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2025, Niklas Entschladen
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
#ifndef __INDIANA_TEST_ENVIRONMENT_HPP_
#define __INDIANA_TEST_ENVIRONMENT_HPP_

#include "Environment.hpp"

class TestEnvironment : public Environment
{
    public:
        /* Enumeration of execution phases */
        enum class execPhases {NONE, CELLLIB, PARSER, ANNOTATION, FILTERING, MULTI_THREADING, MODEL_POSTPROCESSING, ELABORATE, FIA, SCA, COMPLETE};

        /* Constructor(s) */
        TestEnvironment(int argc, char * argv[]);
        TestEnvironment(int argc, char * argv[], execPhases execPhase);

        /* Controlled evaluation execution */
        void execute();

        /* Make TestEnvironment logger accessible from outside */
        Logger* getLogger();
        void setLogger(Logger*);

        /* Make TestEnvironment settings accessible from outside */
        Settings* getSettings();
        void setSettings(Settings*);
        
        /* Make TestEnvironment state accessible from outside */
        State* getState();
        void setState(State*);

        /* Make TestEnvironment parser accessible from outside */
        Parser* getParser();
        void setParser(Parser*);

        /* Make TestEnvironment preprocessor accessible from outside */
        Preprocessor* getPreprocessor();
        void setPreprocessor(Preprocessor*);

        /* Make TestEnvironment preprocessor accessible from outside */
        Analyzer* getAnalyzer();
        void setAnalyzer(Analyzer*);

    private:
        /* Selected initialization phase */
        execPhases execPhase;
};

#endif // __INDIANA_TEST_ENVIRONMENT_HPP_
#endif
