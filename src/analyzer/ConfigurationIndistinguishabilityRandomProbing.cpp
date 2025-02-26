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

#define timing

#include <chrono>
#include <random>

#include "analyzer/ConfigurationIndistinguishabilityRandomProbing.hpp"

void
ConfigurationIndistinguishabilityRandomProbing::initialize(const Settings *settings, State *state)
{
    /* Initialize frequencies */
    ConfigurationIndistinguishability::initialize(settings, state);

}


void
ConfigurationIndistinguishabilityRandomProbing::execute(const Settings *settings, State *state) {
    std::default_random_engine r;

    /* Determine thread */
    unsigned int thread_num = omp_get_thread_num();
    unsigned int inst_num = state->m_core_to_inst[thread_num];

    /* -------------------------------------------------------------- */
    /* FFT-INDIANA: Random probing security check for MUT             */
    /* -------------------------------------------------------------- */

    if (settings->getSideChannelAnalysisRandomProbing()) {

        /* Generate wire state (collect probe location for MUT) */
        m_current_probes.clear();
        for (auto probe : state->m_netlist_model->module_under_test(inst_num)->wires()) {
            bool valid = true;

            // Exclude output wires (inputs to other gadgets)
            for (auto pin : probe->target_pins())
                valid &= (pin->parent_module() != state->m_netlist_model->module_under_test(inst_num));

            if (valid) m_current_probes.push_back(probe);

        }

        /* Collect full support of current MUT */
        BDD fullSupport = state->m_managers[inst_num].bddOne();

        for (auto probe : m_current_probes) {
            BDD var;
            #pragma omp critical
            {
                if (state->m_externally_created_bdds.find(probe) == state->m_externally_created_bdds.end()) {
                    var = state->m_managers[inst_num].bddVar();
                    state->m_externally_created_bdds[probe] = var.NodeReadIndex();
                } else {
                    var = state->m_managers[inst_num].bddVar(state->m_externally_created_bdds[probe]);
                }
            }
            fullSupport &= var;
        }

        // bitmask to create combinations
        std::vector<bool> bitmask(m_current_probes.size());

        // Exhaustive probing
        bool exhaustiveProbing = (settings->getSideChannelRandomProbingMaxProbes() == 0) || (settings->getSideChannelRandomProbingMaxProbes() >= m_current_probes.size());
        bool exhaustiveSampling = (settings->getSideChannelRandomProbingMaxSamples() == 0);
        unsigned int maxSamples = (exhaustiveProbing) ? 1 : (exhaustiveSampling) ? binomial_coeff<unsigned long long int>(m_current_probes.size(), settings->getSideChannelRandomProbingMaxProbes()) : settings->getSideChannelRandomProbingMaxSamples();

        // Select starting combination (max. probes = 0: all probes)
        if (exhaustiveProbing)
            std::fill(bitmask.begin(), bitmask.end(), true);
        else
            std::fill(bitmask.begin(), bitmask.begin() + settings->getSideChannelRandomProbingMaxProbes(), true);

        // New manager for extended FFT (enable computation of random probing probability)
        Cudd_Manager m; m.AutodynEnable(CUDD_REORDER_SIFT);

        // Accumulate failing probe combinations
        BDD lowerBound = m.bddZero(), probed = m.bddOne();

        // Consider trivial case (no probe) always
        for (auto idx : fullSupport.SupportIndices())
            probed &= !m.bddVar(idx);

        if (!exhaustiveSampling) std::shuffle(bitmask.begin(), bitmask.end(), r);

        // do {
        for (unsigned int sample = 0; sample < maxSamples; sample++)
        {
            /* Select current probe combination */
            std::vector<const verica::Wire*> probes;
            for (size_t idx = 0; idx < bitmask.size(); idx++) {
                if (bitmask[idx]) {
                    probes.push_back(m_current_probes[idx]);
                }
            }

            /* Generate supports */
            BDD considered = state->m_managers[inst_num].bddOne();
            for (auto probe : probes) considered &= state->m_managers[inst_num].bddVar(state->m_externally_created_bdds[probe]);
            BDD missing = fullSupport.ExistAbstract(considered);

            /* Generate stage input to probes matrix */
            std::map<int, std::set<int>> input_to_probes = inputs_to_probes_matrix(state, probes, inst_num);

            /* Generate probe frequencies */
            std::pair<ADD, ADD> probe_frequencies = transition_relation(settings, state, input_to_probes, m_frequency, inst_num);

            /* Fast Fourier-Hadarmard Transformation INDIANA (random probing) */
            BDD next_extension = indistinguishabilityRandomProbing(settings, state->m_managers[inst_num], probe_frequencies.first, probe_frequencies.second, considered);

            /* Accumulate all failing probe combinations (for all checks) as lower bound */
            lowerBound |= next_extension.Transfer(m);

            /* Track probed combinations */
            BDD current = m.bddZero();
            for (int idx : considered.SupportIndices()) current |= m.bddVar(idx);
            for (int idx : missing.SupportIndices()) current &= !m.bddVar(idx);
            probed |= current;

            /* Shuffle */
            if (!exhaustiveSampling) {
                std::shuffle(bitmask.begin(), bitmask.end(), r);
            } else {
                std::prev_permutation(bitmask.begin(), bitmask.end());
            }
        }

        /* Compute upper-bound (assume all unprobed combinations as leaking) */
        BDD upperBound = (lowerBound | !probed); // support = m.bddOne();

        /* Simulate copy gates (optional) */
        // if (settings->getSideChannelRandomProbingCopyGates() != "none") {

        //     std::cout << "Simulate " << settings->getSideChannelRandomProbingCopyGates() << " wire copies... " << std::flush;

        //     /* Collect probes to copy */
        //     std::vector<const verica::Wire*> probes_to_copy;
        //     for (auto probe : m_current_probes) {
        //         if (probe->target_pins().size() > 1)
        //             probes_to_copy.push_back(probe);
        //     }

        //     /* Create copies */
        //     std::map<int, BDD> copies;
        //     for (auto probe : probes_to_copy) {
        //         BDD copy = m.bddZero(); int number_of_copies = 0;

        //         if (settings->getSideChannelRandomProbingCopyGates() == "software")
        //             number_of_copies = (2 * probe->target_pins().size() - 1);

        //         if (settings->getSideChannelRandomProbingCopyGates() == "hardware")
        //             number_of_copies = probe->target_pins().size();

        //         for (int idx = 0; idx < number_of_copies; idx++) {
        //             if (idx > 0) m_current_probes.push_back(probe);
        //             BDD var = m.bddVar(); copy |= var;
        //         }

        //         copies[state->m_externally_created_bdds[probe]] = copy;
        //     }

        //     /* Compose bounds with copies */
        //     std::vector<BDD> compose;
        //     for (int idx = 0; idx < m.ReadSize(); idx++) {
        //         if (copies.count(idx) > 0) compose.push_back(copies[idx]);
        //         else compose.push_back(m.bddVar(idx));
        //     }

        //     lowerBound = lowerBound.VectorCompose(compose);
        //     upperBound = upperBound.VectorCompose(compose);

        //     support = fullSupport.Transfer(m).VectorCompose(compose);

        //     std::cout << "done! (simulated " << support.SupportSize() << " wires)" << std::endl;
        // } else {
        //     support = fullSupport.Transfer(m);
        // }


        if ((settings->getVerbose() >= VFULL) && !settings->getSideChannelAnalysisProbingCycleAccurate()) {

            ADD supportSum = m.addZero();
            for (auto idx : fullSupport.SupportIndices())
                supportSum += m.addVar(idx);

            m.ReduceHeap();

            if (lowerBound == upperBound) {
                std::cout << "f(p) = [ ";
                for(int weight = 1; weight <= fullSupport.SupportSize(); weight++) {
                    BDD mask = supportSum.Agreement(m.constant(weight)).BddPattern();
                    std::cout << (upperBound & mask).CountMinterm(fullSupport.SupportSize());
                    if (weight == fullSupport.SupportSize()) std::cout << " " << std::flush; else std::cout << ", " << std::flush;
                }
                std::cout << "]" << std::endl;
            }
        }

        /* Compute random probing leakage probability */
        if (settings->getSideChannelRandomProbingCopyGates() != "none") {
            std::map<int, double> probabilities; double p = settings->getSideChannelRandomProbingProbability();

            int copies = 0;

            for (auto probe : m_current_probes) {
                if (settings->getSideChannelRandomProbingCopyGates() == "hardware") {
                    probabilities[state->m_externally_created_bdds[probe]] = (1 - pow(1 - p, probe->target_pins().size()));
                    copies += probe->target_pins().size();
                }
                if (settings->getSideChannelRandomProbingCopyGates() == "software") {
                    probabilities[state->m_externally_created_bdds[probe]] = (1 - pow(1 - p, 2 * probe->target_pins().size() - 1));
                    copies += (2 * probe->target_pins().size() - 1);
                }
            }

            this->m_leakage_probability = std::make_pair(m.bdd_singprobability(lowerBound, probabilities),
                                                         m.bdd_singprobability(upperBound, probabilities));

            std::cout << "Simulated " << copies << " " << settings->getSideChannelRandomProbingCopyGates() << " wire copies. " << std::endl;
        } else {
            this->m_leakage_probability = std::make_pair(m.bdd_singprobability(lowerBound, settings->getSideChannelRandomProbingProbability()),
                                                         m.bdd_singprobability(upperBound, settings->getSideChannelRandomProbingProbability()));
        }
    }
}


void
ConfigurationIndistinguishabilityRandomProbing::finalize(const Settings *settings, State *state)
{
    /* Finalize frequencies */
    ConfigurationIndistinguishability::finalize(settings, state);
}

void
ConfigurationIndistinguishabilityRandomProbing::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Determine thread */
    unsigned int thread_num = omp_get_thread_num();
    unsigned int inst_num = state->m_core_to_inst[thread_num];

    /* Print header */
    logger->header("ANALYSIS REPORT");

    /* Print random probing results */
    if (settings->getVerbose() >= VBASE)
    {
        logger->log(service, this->m_name, "module  : " + state->m_netlist_model->module_under_test(inst_num)->name());
        if (settings->getSideChannelRandomProbingMaxProbes())
            logger->log(service, this->m_name, "probe limit : " + std::to_string(settings->getSideChannelRandomProbingMaxProbes()));
        logger->log(service, this->m_name, "leakage probability :");
        logger->log(service, this->m_name, ITEM + "wire (given)      : p = " + std::to_string(settings->getSideChannelRandomProbingProbability()));
        logger->log(service, this->m_name, ITEM + "module (min.)     : p = " + std::to_string(this->m_leakage_probability.first));
        logger->log(service, this->m_name, ITEM + "module (max.)     : p = " + std::to_string(this->m_leakage_probability.second));
    }

    logger->footer(service, this->m_name, SUCCESS);
}

BDD
ConfigurationIndistinguishabilityRandomProbing::indistinguishabilityRandomProbing(const Settings *settings, Cudd &mgr, ADD &freq0, ADD &freq1, BDD freqVar)
{

    // Split activation and frequency variables
    BDD actVar = freq0.Support().ExistAbstract(freqVar);

    // Determine difference of frequencies (freq0: All freq., freq1: Single freq.)
    ADD diff = (freq0 - freq1);

    // Existential abstraction of activation variables
    // TODO: Check, if correct
    diff = diff.ExistAbstract(actVar.Add());

    // Disable reordering before FFT
    if (settings->getReordering()) mgr.AutodynDisable();

    // Perform Fast Fourier Transform on diff. function (excluding activation variables)
    ADD fft = addFourierTransform(mgr, diff, freqVar);

    // Extend FFT to include missing (higher-order) failing probe combinations
    BDD extension = addExtendFourierTransform(mgr, fft, freqVar);

    // Enable reordering after FFT
    if (settings->getReordering()) mgr.AutodynEnable();

    return extension;
}

ADD
ConfigurationIndistinguishabilityRandomProbing::addFourierTransform(Cudd &mgr, ADD diff, BDD support)
{
    std::vector<unsigned int> supp = support.SupportIndices();

    ADD fft = diff;

    for (int i = supp.size() - 1; i >= 0; i--) {

        mgr.AutodynEnable(CUDD_REORDER_SIFT);

        ADD var = mgr.addVar(supp[i]);

        ADD zero = fft.Restrict(~var);
        ADD one  = fft.Restrict( var);

        mgr.AutodynDisable();

        fft = var.Ite(zero - one, zero + one);
    }

    return fft;
}

BDD
ConfigurationIndistinguishabilityRandomProbing::addExtendFourierTransform(Cudd &mgr, ADD fft, BDD support)
{
    // C-like complement (CUDD: "The complement of 0 is 1 and the complement of everything else is 0.");
    ADD check = ~fft;

    // Convert to BDD and invert (zero-valued terms in FFT are set to zero again)
    BDD extension = (!check.BddPattern());

    mgr.AutodynEnable(CUDD_REORDER_SIFT);

    // Extend missing (failing) probe combinations
    for (int idx : support.SupportIndices()) {
        extension |= extension.Restrict(!mgr.bddVar(idx));
    }

    mgr.AutodynDisable();

    return extension;
}

void
ConfigurationIndistinguishabilityRandomProbing::addCheckCubeWeights(DdManager *mgr, DdNode *dd, std::vector<unsigned int> &weightChecks, unsigned int weight, unsigned int nvars)
{
    /* Early termination (if zero-valued path with same weight was found before) */
    if (weightChecks[weight] == 0) {
        if (Cudd_IsConstant(dd)) {
            if (Cudd_V(dd) == 1) {
                // Consider missing variable combinations/weights
                for (size_t idx = 0; idx < (weightChecks.size() - weight); idx++) {
                    weightChecks[weight + idx] = 1;
                }
            }
        } else {
            addCheckCubeWeights(mgr, Cudd_T(dd), weightChecks, weight + 1, nvars - 1);
            addCheckCubeWeights(mgr, Cudd_E(dd), weightChecks, weight + 0, nvars - 1);
        }
    }
}
