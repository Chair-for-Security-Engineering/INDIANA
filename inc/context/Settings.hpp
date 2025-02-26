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

#ifndef __INDIANA_CONTEXT_SETTINGS_HPP_
#define __INDIANA_CONTEXT_SETTINGS_HPP_

#include <boost/program_options.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

#include <string>

#include "util.hpp"

class Settings
{
    public:

        /* Constructor */
        Settings(int argc, char * argv[]);

        /* Destructor */
        ~Settings();

        /* Member functions reading settings */
        /* General */
        int getVerbose() const;
        unsigned int getCores() const;
        int getMemory() const;

        std::string getDesignFilePath() const;

        std::string getLibraryFilePath() const;
        std::string getLibraryName() const;

        std::string getSideChannelFilteringType() const;
        std::string getSideChannelWhiteList() const;
        std::string getSideChannelBlackList() const;

        std::string getAnnotationFilePath() const;
        bool getAnnotation() const;

        bool getReordering() const;

        bool getVisualization() const;
        std::string getVisualizationPath() const;
        bool getVisualizationFull() const;
        bool getVisualizationPartial() const;


        /* Side-Channel */
        bool getSideChannel() const;

        int getSideChannelOrder() const;
        int getMasking() const;
        bool getSideChannelInterrupt() const;

        bool getSideChannelModelGlitches() const;
        bool getSideChannelModelTransitions() const;
        bool getSideChannelModelCouplings() const;

        bool getSideChannelAnalysisUniformity() const;
        bool getSideChannelAnalysisProbing() const;
        bool getSideChannelAnalysisProbingCycleAccurate() const;
        bool getSideChannelAnalysisRandomProbing() const;

        std::string getSideChannelRandomProbingCopyGates() const;
        long double getSideChannelRandomProbingProbability() const;
        unsigned int getSideChannelRandomProbingMaxProbes() const;
        unsigned int getSideChannelRandomProbingMaxSamples() const;



        /* Additional member functions */
        bool getFaultComposability() const;
        void setFaultVariate(const int &cores);


    private:

        /* Validate settings */
        void validateAndInitSettings(boost::property_tree::ptree & config);
        template<typename rT, typename  iT>
        rT checkSettingRangeInclusive(const std::string &setting, const iT &a, const iT &b, boost::property_tree::ptree & config);

        template<typename rT, typename  iT>
        rT checkSettingList(const std::string &setting, const std::vector<iT> &validSettings, boost::property_tree::ptree & config);

        std::string checkSettingFileExists(const std::string& setting, boost::property_tree::ptree & config);
        std::string checkSettingPathExists(const std::string& setting, boost::property_tree::ptree & config);
        template<typename T> T checkSettingGreaterEqual(const std::string &setting, const T &threshold, boost::property_tree::ptree & config);
        void checkInvalidSettingCombinations();


        /* Settings */
        int cores = -1;
        unsigned long memory = 0;
        int faultVariate = -1;
        bool reorderingEnabled = false;
        bool visualizationEnabled = false;
        std::string visualizationPath = "";
        bool fullVisualizationEnabled = false;
        bool partialVisualization = false;
        int verbose = 0;
        std::string designFilePath = "";
        std::string libraryFilePath = "";
        std::string libraryName = "";
        bool annotationsEnabled = false;
        std::string annotationFilePath = "";



        // Side-Channel Analysis
        int scaMasking = 0;
        bool scaEnabled = false;
        bool scaUniformityEnabled = false;
        bool scaProbingEnabled = false;
        bool scaProbingCycleAccurate = false;
        bool scaRandomProbingEnabled = false;
        std::string scaFilteringType = "";
        std::string scaWhiteList = "";
        std::string scaBlackList = "";
        int scaOrder = 0;
        bool scaInterruptEnabled = false;
        bool scaModelGlitchesEnabled = false;
        bool scaModelTransitionsEnabled = false;
        bool scaModelCouplingsEnabled = false;
        
        std::string scaRandomProbingCopyGates = "";
        long double scaRandomProbingProbability = 0.0;
        unsigned int scaRandomProbingMaxProbes = 0;
        unsigned int scaRandomProbingMaxSamples = 0;
};

#endif // __INDIANA_CONTEXT_SETTINGS_HPP_
