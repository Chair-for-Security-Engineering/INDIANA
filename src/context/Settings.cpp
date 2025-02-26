/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr University Bochum
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de) and Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2024/833.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2025, Pascal Sasdrich
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

#include "context/Settings.hpp"

#include <boost/property_tree/ptree_fwd.hpp>
#include <iostream>
#include <filesystem>

/*
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Settings::Settings(int argc, char * argv[])
{
    std::string configurationPath;

    /* Boost property tree (parsed from .json configuration) */
    boost::property_tree::ptree config;

    /* Parsing of command-line arguments */
    try {
        boost::program_options::positional_options_description pdesc;
        pdesc.add("file", -1);

        boost::program_options::options_description desc{"Options"};
        desc.add_options()
            ("help,h", "Help screen")
            ("config,c", boost::program_options::value<std::string>()->default_value("config/settings"), "Textual description of configuration settings.");

        boost::program_options::variables_map vm;
        boost::program_options::store(boost::program_options::parse_command_line(argc, argv, desc), vm);
        boost::program_options::notify(vm);

        if(vm.count("help")) {
            std::cout << desc << std::endl;
        } else if (vm.count("config")) {
            configurationPath = vm["config"].as<std::string>();
            // boost::property_tree::ini_parser::read_ini(configurationPath, config);
            boost::property_tree::read_json(configurationPath, config);
        }

    } catch (const boost::program_options::error &ex) {
        throw ex;
    }

    // Validate parsed settings
    validateAndInitSettings(config);

    // Identify invalid combinations of settings
    checkInvalidSettingCombinations();
}

/*
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Settings::~Settings()
{

}

/*
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void Settings::setFaultVariate(const int& v){
    this->faultVariate = v;
}

unsigned int Settings::getCores() const {
    return this->cores;
}

int Settings::getMemory() const {
    return this->memory;
}

bool Settings::getReordering() const {
    return this->reorderingEnabled;
}

bool Settings::getVisualization() const {
    return this->visualizationEnabled;
}

std::string Settings::getVisualizationPath() const{
    return this->visualizationPath;
}

bool Settings::getVisualizationFull() const {
    return this->fullVisualizationEnabled;
}

bool Settings::getVisualizationPartial() const {
    return this->partialVisualization;
}

int Settings::getMasking() const {
    return this->scaMasking;
}

int Settings::getVerbose() const {
    return this->verbose;
}

std::string
Settings::getDesignFilePath() const
{
    return this->designFilePath;
}

std::string
Settings::getLibraryFilePath() const
{
    return this->libraryFilePath;
}

std::string
Settings::getLibraryName() const
{
    return this->libraryName;
}

std::string
Settings::getSideChannelFilteringType() const
{
    return this->scaFilteringType;
}

std::string
Settings::getSideChannelWhiteList() const
{
    return this->scaWhiteList;
}

std::string
Settings::getSideChannelBlackList() const
{
    return this->scaBlackList;
}

std::string
Settings::getAnnotationFilePath() const
{
    return this->annotationFilePath;
}

bool Settings::getAnnotation() const {
    return this->annotationsEnabled;
}


/**********************************************************************
*                       Side-Channel Analysis
***********************************************************************/
bool Settings::getSideChannel() const {
    return this->scaEnabled;
}

int Settings::getSideChannelOrder() const {
    return this->scaOrder;
}

bool Settings::getSideChannelInterrupt() const {
    return this->scaInterruptEnabled;
}

bool Settings::getSideChannelModelGlitches() const {
    return this->scaModelGlitchesEnabled;
}

bool Settings::getSideChannelModelTransitions() const {
    return this->scaModelTransitionsEnabled;
}

bool Settings::getSideChannelModelCouplings() const {
    return this->scaModelCouplingsEnabled;
}

bool Settings::getSideChannelAnalysisUniformity() const {
    return this->scaUniformityEnabled && this->scaEnabled;
}

bool Settings::getSideChannelAnalysisProbing() const {
    return this->scaProbingEnabled && this->scaEnabled;
}

bool Settings::getSideChannelAnalysisProbingCycleAccurate() const {
    return this->scaProbingCycleAccurate;
}

bool Settings::getSideChannelAnalysisRandomProbing() const {
    return this->scaRandomProbingEnabled && this->scaEnabled;
}

std::string Settings::getSideChannelRandomProbingCopyGates() const {
    return this->scaRandomProbingCopyGates;
}

unsigned int Settings::getSideChannelRandomProbingMaxProbes() const {
    return this->scaRandomProbingMaxProbes;
}

unsigned int Settings::getSideChannelRandomProbingMaxSamples() const {
    return this->scaRandomProbingMaxSamples;
}

long double Settings::getSideChannelRandomProbingProbability() const {
    return this->scaRandomProbingProbability;
}


/**********************************************************************/



void Settings::validateAndInitSettings(boost::property_tree::ptree & config){
    std::vector<std::string> boolean{"false", "true"};
    std::vector<int> verbose{VBASE, VINFO, VFULL, VDETAIL};
    std::vector<std::string> filter{"none", "black", "white"};
    std::vector<std::string> location{"c", "s", "cs"};
    std::vector<std::string> lib{"NANG45", "NL"};
    std::vector<std::string> copy_gates{"none", "software", "hardware"};

    // -------------------- General Settings --------------------
    // Determine current number of cores
    this->cores = checkSettingRangeInclusive<unsigned int, unsigned int>("general.cores", 0u, omp_get_max_threads(), config);
    if (this->cores == 0) this->cores = omp_get_max_threads();
    this->verbose = checkSettingList<int, int>("general.verbose", verbose, config);

    // TODO: memory validation
    this->memory                    = config.get<unsigned long>("general.memory");

    // validate netlist settings
    this->designFilePath = checkSettingFileExists("general.netlist.file", config);

    // validate library settings
    this->libraryFilePath = checkSettingFileExists("general.library.file", config);
    this->libraryName = checkSettingList<std::string, std::string>("general.library.name", lib, config);

    // validate filtering settings
    this->scaFilteringType = checkSettingList<std::string, std::string>("general.filtering.sca.type", filter, config);
    this->scaWhiteList = checkSettingFileExists("general.filtering.sca.whitelist", config);
    this->scaBlackList = checkSettingFileExists("general.filtering.sca.blacklist", config);

    // validate annotation settings
    this->annotationFilePath = checkSettingFileExists("general.annotation.file", config);
    this->annotationsEnabled = checkSettingList<bool,std::string>("general.annotation.apply", boolean, config);

    // validate cudd settings
    this->reorderingEnabled = checkSettingList<bool, std::string>("general.cudd.reordering", boolean, config);

    // validate visualization settings
    this->visualizationEnabled = checkSettingList<bool, std::string>("general.visualization.enable", boolean, config);
    this->visualizationPath = checkSettingPathExists("general.visualization.path", config);
    this->fullVisualizationEnabled = checkSettingList<bool, std::string>("general.visualization.full", boolean, config);
    this->partialVisualization = checkSettingList<bool, std::string>("general.visualization.partial", boolean, config);
    // ---------------------------------------------------------



    // -------------------------- SCA --------------------------
    // validate SCA settings
    this->scaEnabled = checkSettingList<bool, std::string>("side-channel.enable", boolean, config);

    this->scaOrder = checkSettingGreaterEqual("side-channel.configuration.order", 0, config);
    this->scaMasking = checkSettingRangeInclusive<int, int>("side-channel.configuration.masking", 0, 1, config);
    this->scaInterruptEnabled = checkSettingList<bool, std::string>("side-channel.configuration.interrupt", boolean, config);

    this->scaModelGlitchesEnabled = checkSettingList<bool, std::string>("side-channel.model.glitches", boolean, config);
    this->scaModelTransitionsEnabled = checkSettingList<bool, std::string>("side-channel.model.transitions", boolean, config);
    this->scaModelCouplingsEnabled = checkSettingList<bool, std::string>("side-channel.model.couplings", boolean, config);

    this->scaUniformityEnabled = (this->scaEnabled && checkSettingList<bool, std::string>("side-channel.analysis.uniformity", boolean, config));
    this->scaProbingEnabled = (this->scaEnabled && checkSettingList<bool, std::string>("side-channel.analysis.probing", boolean, config));
    this->scaProbingCycleAccurate = checkSettingList<bool, std::string>("side-channel.random-probing.cycle-accurate", boolean, config);
    this->scaRandomProbingEnabled = checkSettingList<bool, std::string>("side-channel.analysis.random-probing", boolean, config);
    this->scaRandomProbingCopyGates = checkSettingList<std::string, std::string>("side-channel.random-probing.copy-gates", copy_gates, config);
    this->scaRandomProbingMaxProbes = checkSettingGreaterEqual<unsigned int>("side-channel.random-probing.max-probes", 0, config);
    this->scaRandomProbingMaxSamples = checkSettingGreaterEqual<unsigned int>("side-channel.random-probing.max-samples", 0, config);
    this->scaRandomProbingProbability = checkSettingGreaterEqual("side-channel.random-probing.probability", 0.0, config);
}

template<typename rT, typename iT>
rT Settings::checkSettingRangeInclusive(const std::string &setting, const iT &a, const iT &b, boost::property_tree::ptree &config){
    rT val = config.get<rT>(setting);
    if (a <= val && val <= b) {
        return val;
    }

    throw std::logic_error("[CONFIG] Invalid value for " + setting + "!");
}

template<typename rT, typename iT>
rT Settings::checkSettingList(const std::string &setting, const std::vector<iT> &validSettings, boost::property_tree::ptree &config){
    rT val = config.get<rT>(setting);
    if (std::find(validSettings.begin(), validSettings.end(), config.get<iT>(setting)) != validSettings.end()) {
        return val;
    }

    throw std::logic_error("[CONFIG] Invalid value for " + setting + "!");
}

std::string Settings::checkSettingFileExists(const std::string &setting, boost::property_tree::ptree &config) {
    std::string path = config.get<std::string>(setting);
    std::ifstream f(path.c_str());
    if (f.good()) {
        return path;
    }

    throw std::logic_error("[CONFIG] Invalid path for " + setting + "!");
}

std::string Settings::checkSettingPathExists(const std::string &setting, boost::property_tree::ptree &config) {
    std::string path = config.get<std::string>(setting);
    const std::filesystem::path p{path};
    if (std::filesystem::exists(p)) {
        return path;
    }

    throw std::logic_error("[CONFIG] Directory for " + setting + "does not exist!");
}

template<typename T> T Settings::checkSettingGreaterEqual(const std::string &setting, const T &threshold, boost::property_tree::ptree &config){
    T num = config.get<T>(setting);
    if (num >= threshold) {
        return num;
    }

    throw std::logic_error("[CONFIG] Invalid value for " + setting + "!");
}

void Settings::checkInvalidSettingCombinations(){
    // The SCA indistinguishability is currently only supported for probing security 
    // combined analyses are also not support yet
    if (!this->getSideChannelModelGlitches()) {
        throw std::logic_error("[SETTINGS] The indistinguishability approach can only evaluate designs in the glitch-extended probing model! Please enable side-channel.model.glitches!");
    }

    if (this->getSideChannelAnalysisProbing() && this->getSideChannelAnalysisRandomProbing()) {
        throw std::logic_error("[SETTINGS] Verifying probing security and random probing security simultaneously is currently not supported!");
    }

    // Check settings for masking (i.e., Boolean or arithmetic)
    if (this->getMasking() != 0) {
        throw std::logic_error("[SETTINGS] By now, VERICA is only tested for Boolean masking! Please set side-channel.configuration.masking to 0!");
    }

    // Check transitions settings
    if (this->getSideChannelModelTransitions()) {
        throw std::logic_error("[SETTINGS] By now, VERICA does not support verifications in the transition-extended probing model! Please disable side-channel.model.transitions!");
    }

    // Check couplings settings
    if (this->getSideChannelModelCouplings()) {
        throw std::logic_error("[SETTINGS] By now, VERICA does not support verifications in the coupling-extended probing model! Please disable side-channel.model.couplings!");
    }
}
