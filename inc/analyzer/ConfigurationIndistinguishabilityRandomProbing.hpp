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

#ifndef __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_RANDOM_PROBING_HPP_
#define __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_RANDOM_PROBING_HPP_

#include "analyzer/ConfigurationIndistinguishability.hpp"

class ConfigurationIndistinguishabilityRandomProbing : public ConfigurationIndistinguishability
{
    public:
    
        ConfigurationIndistinguishabilityRandomProbing(std::string name) : ConfigurationIndistinguishability(name) { };

        /* Initialize analysis for given context & configuration */
        void initialize(const Settings *settings, State *state) override;

        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        /* Accessor function(s) */
        const std::pair<long double, long double> leakage_probability() const { return this->m_leakage_probability; }

    private:

        /** 
         * FFT-based determination of max. probing security order (using indistinguishability of frequencies).
         * 
         * @param mgr Current CUDD manager
         * @param freq0 Frequencies for all secrets (including activation variables)
         * @param freq1 Frequencies for one secret (no activation variables)
         * 
         * @param BDD for all failing probe combinations (for given FFT)
         */  
        BDD indistinguishabilityRandomProbing(const Settings *settings, Cudd &mgr, ADD &freq0, ADD &freq1, BDD freqVar);

        /** 
         * Computes Fast Fourier Transformation of function (given as ADD) with respect to all variables in the support.
         * 
         * Requires: Existential abstraction of difference of frequencies (with respect to secret activation varibles).
         * 
         * @param mgr Current CUDD manager
         * @param diff ADD containing difference of frequencies
         * @param supp Support of the difference of frequencies (excluding secret activation variables)
         * 
         * @return FFT of difference of frequencies.
         */  
        ADD addFourierTransform(Cudd &mgr, ADD diff, BDD support);        

        /** 
         * Extends FFT with respect to failing (non-zero) assignments.
         * 
         * @param mgr Current CUDD manager
         * @param fft ADD containing the FFT
         * @param support Support of the FFT
         * 
         * @param BDD for all failing probe combinations (for given FFT)
         */  
        BDD addExtendFourierTransform(Cudd &mgr, ADD fft, BDD support);

        /** 
         * Checks the weights of all pathes leading to one (cubes).
         * This is faster than counting the weights (due to early termination in recursion).
         * 
         * @param mgr Pointer to current CUDD manager (C interface)
         * @param dd Pointer to DD node (C interface)
         * @param weightChecks Vector (size: support(dd) + 1) indicating (set to one) zero-valued paths for all weights (initialized to zero)
         * @param weight Weight of currently explored path (initial: 0)
         * @param nvars Number of remaining vars (initial: support(dd))
         */  
        void addCheckCubeWeights(DdManager *mgr, DdNode *dd, std::vector<unsigned int> &weightChecks, unsigned int weight, unsigned int nvars);

        std::pair<long double, long double> m_leakage_probability;              /**< Random probing leakage probabilities (lower/upper bound) for current design*/
};

#endif // __INDIANA_ANALYZER_CONFIGURATION_INDISTINGUISHABILITY_RANDOM_PROBING_HPP_