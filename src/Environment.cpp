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
#include <string>
#include <vector>
#include <iostream>
#include <memory>

#include <boost/algorithm/string/predicate.hpp>

#include "Environment.hpp"

#include "parser/ConfigurationFirrtl.hpp"
#include "parser/ConfigurationLibrary.hpp"
#include "parser/ConfigurationNetlist.hpp"
#include "parser/ConfigurationVerilog.hpp"
#include "parser/ConfigurationSage.hpp"

#include "preprocessor/ConfigurationFiltering.hpp"
#include "preprocessor/ConfigurationMultithreading.hpp"
#include "preprocessor/ConfigurationAnnotation.hpp"
#include "preprocessor/ConfigurationModelPostprocessing.hpp"
#include "preprocessor/ConfigurationProperties.hpp"
#include "preprocessor/ConfigurationElaborate.hpp"
#include "preprocessor/ConfigurationSCA.hpp"

#include "partitioner/ConfigurationBreadth.hpp"
#include "partitioner/ConfigurationBreadthDepth.hpp"

#include "analyzer/ConfigurationProbing.hpp"
#include "analyzer/ConfigurationIndistinguishabilityProbing.hpp"
#include "analyzer/ConfigurationIndistinguishabilityRandomProbing.hpp"
#include "analyzer/ConfigurationUniformity.hpp"

#include "visualization/ConfigurationGraphvizDot.hpp"

#include "composer/NetlistComposer.hpp"

#include "cudd/cudd_ext.hpp"
/*
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Environment::Environment(int argc, char * argv[]) :
    m_logger{new Logger(100)},
    m_state{new State()},
    m_settings{new Settings(argc, argv)}
{
    /* Initialize execution environment */
    this->initialize();

    /* Execute evaluation */
    //this->execute();  // This line causes errors in the specific Tests using TestEnvironment.
                        // Since it is executed in Ctor it executes all steps and writes all computation to our State.
                        // Therefore, everything is already set and the Execution of TestEnvironment with execute,
                        // faces a not empty structure.
                        // But the algorithms are designed for emmpty structurs --> failling!
                        // move in main();
}

/*
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Environment::~Environment() {
    delete this->m_partitioner;
    delete this->m_visualizer;
    delete this->m_analyzer;
    delete this->m_preprocessor;
    delete this->m_parser;
    delete this->m_settings;
    delete this->m_state;
    delete this->m_logger;
}

/*
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */

void
Environment::initialize() {
    /* Registering new parser instance */
    this->m_parser = new Parser("PARSER", this->m_logger, this->m_settings, this->m_state);

    /* Registering new preprocessor instance */
    this->m_preprocessor = new Preprocessor("PREPROCESSOR", this->m_logger, this->m_settings, this->m_state);

    /* Registering new partitioner instance */
    this->m_partitioner = new Partitioner("PARTITIONER", this->m_logger, this->m_settings, this->m_state);

    /* Registering new analyzer instance */
    this->m_analyzer = new Analyzer("ANALYZER", this->m_logger, this->m_settings, this->m_state);

    /* Registering new visualization instance */
    this->m_visualizer = new Visualizer("VISUALIZER", this->m_logger, this->m_settings, this->m_state);
}

void
Environment::execute()
{

    /* Design cell library parser configuration & execution */
    ConfigurationLibrary configLibrary{"CELLLIB"};
    this->m_parser->configure(&configLibrary);                                          
    this->m_parser->execute();
    this->m_parser->report();

    /* Design parser configuration & execution */
    if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".fir")){
        ConfigurationFirrtl configFirrtl{"FIRRTL"};
        this->m_parser->configure(&configFirrtl);    
        this->m_parser->execute();
        this->m_parser->report(); 
    }               
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".v")){
        ConfigurationVerilog configVerilog{"VERILOG"}; 
        this->m_parser->configure(&configVerilog);
        this->m_parser->execute();
        this->m_parser->report();                                     
    }
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".nl")){
        ConfigurationNetlist configNetlist{"NETLIST"};
        this->m_parser->configure(&configNetlist);
        this->m_parser->execute();
        this->m_parser->report(); 
    }
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".sage")){        
        ConfigurationSage configSage{"SAGE"};
        this->m_parser->configure(&configSage);
        this->m_parser->execute();
        this->m_parser->report(); 
    }

    NetlistComposer nc{"COMPOSER"};
    nc.execute(this->m_settings, this->m_state);

    /* Preprocessor configuration & execution */
    if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".v")){
        ConfigurationAnnotation configAnnotation{"ANNOTATION"};
        this->m_preprocessor->configure(&configAnnotation);     
        this->m_preprocessor->execute();
        this->m_preprocessor->report();
    }
    
    ConfigurationFiltering configFiltering{"FILTERING"};
    this->m_preprocessor->configure(&configFiltering);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationMultithreading configMultithreading{"MULTI-THREADING"};
    this->m_preprocessor->configure(&configMultithreading);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationModelPostprocessing configModelPostprocessing{"MODEL POSTPROCESSING"};
    this->m_preprocessor->configure(&configModelPostprocessing);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationProperties configProperties{"MODEL PROPERTIES"};
    this->m_preprocessor->configure(&configProperties);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    if (this->m_settings->getSideChannelAnalysisRandomProbing() && !this->m_settings->getSideChannelAnalysisProbingCycleAccurate()) {
        this->m_state->m_sca_partitions = {{ this->m_state->m_netlist_model->topmodule() }};
    } else {
        ConfigurationBreadthDepth configBreadthDepth("BREADTH+DEPTH");
        this->m_partitioner->configure(&configBreadthDepth);
        this->m_partitioner->execute();
        this->m_partitioner->report();
    }

    ConfigurationSCA sca_preprocessor{"SCA"};
    this->m_preprocessor->configure(&sca_preprocessor);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationElaborate configElaborate{"ELABORATE"};    




    /*
     * =====================================================================================
     * [UNIFORMITY] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisUniformity())
    {
        /* Create new uniformity verification strategy */
        ConfigurationUniformity uniformity{"UNIFORMITY"};

        /* Initialize uniformity strategy */
        uniformity.initialize(this->m_settings, this->m_state);

        /* Perform uniformity analysis */
        this->m_analyzer->configure(&uniformity);
        this->m_analyzer->execute();

        /* Report uniformity results */
        this->m_analyzer->report();
    }


    // /*
    //  * =====================================================================================
    //  * [PROBING] Statistical Independence Leakage VERification (SILVER)
    //  * =====================================================================================
    //  */
    // if (this->m_settings->getSideChannelAnalysisProbing()){
    //     if(this->m_settings->getSideChannelStrategy() == "independence"){      
    //         /* Create new probing verification strategy */
    //         ConfigurationProbing probing{"PROBING", Composability::NONE};
    //         analyze_sca(probing, "PROBING");
    //     } else if(this->m_settings->getSideChannelStrategy() == "indistinguishability"){
    //         /* Create new probing verification strategy based on indistinguishability */
    //         ConfigurationIndistinguishabilityProbing probing("PROBING-IND");

    //         /* Initialize probing strategy */
    //         probing.initialize(this->m_settings, this->m_state);

    //         bool cancel = false;
    //         // for(auto stage : this->m_state->m_probe_positions_indistinguishability){
    //         for(auto stage_idx=0; stage_idx<this->m_state->m_probe_positions_indistinguishability.size(); stage_idx++){
    //             /* Set current probe combination */
    //             bool last_stage = (stage_idx == (this->m_state->m_probe_positions_indistinguishability.size()-1)) ? true : false;
    //             probing.current_probes(this->m_state->m_probe_positions_indistinguishability[stage_idx], last_stage);

    //             /* Analyze */
    //             probing.execute(m_settings, m_state);

    //             /* Finalize */

    //             /* Early abort */
    //             if (!probing.indistinguishable() && !cancel && this->m_settings->getSideChannelInterrupt()) {
    //                 cancel = true;
    //                 break;
    //             }
    //         }

    //         probing.finalize(m_settings, m_state);

    //         /* Report probing results */
    //         this->m_analyzer->configure(&probing);
    //         this->m_analyzer->report();
    //     } else {
    //         throw std::logic_error("[ENVIRONMENT] Invalid strategy to check probing security!");
    //     }
    // }

    /*
     * =====================================================================================
     * [PROBING] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisProbing() || this->m_settings->getSideChannelAnalysisRandomProbing()){
        /* Create BDD managers - one manager for each virtual submodule on the first stage */
        unsigned int parallel_inst = m_state->m_sca_partitions[0].size();
        m_state->create_dd_managers(parallel_inst, m_settings->getMemory(), m_settings->getReordering());

        /* Resize BDD vectors of all wires */
        for (auto w : m_state->m_netlist_model->topmodule()->wires()) {
            m_state->m_netlist_model->resize_bdd_vectors(w->uid(), parallel_inst);
        }

        /* Create strategies for parallel elaboration */
        std::vector<ConfigurationElaborate*> elaboration_strategies;
        for (unsigned int core = 0; core<m_settings->getCores(); core++) {
            elaboration_strategies.push_back(new ConfigurationElaborate("ELABORATE"));
        }

        /* Create probing strategies for parallel verification */
        std::vector<ConfigurationIndistinguishability*> probing_strategies;
        if (this->m_settings->getSideChannelAnalysisProbing()) {
            for (unsigned int b = 0; b < m_state->m_sca_partitions[0].size(); b++) {
                /* Create new probing verification strategy based on indistinguishability */
                probing_strategies.push_back(new ConfigurationIndistinguishabilityProbing("INDIANA"));
            }
        } else {
            for (unsigned int b = 0; b < m_state->m_sca_partitions[0].size(); b++) {
                /* Create new random probing verification strategy based on FFT-indistinguishability */
                probing_strategies.push_back(new ConfigurationIndistinguishabilityRandomProbing("FFT-INDIANA"));
            }
        }

        for(long unsigned int depth_idx=0; depth_idx<m_state->m_sca_partitions.size(); depth_idx++){
            /* Extract virtual modules of current stage */
            std::vector<const verica::Module*> virtual_module = m_state->m_sca_partitions[depth_idx];

            /* Extract all virtual submodules of current stage and set modules under test (MUT) */
            m_state->m_netlist_model->resize_module_under_test(virtual_module.size());
            #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_state)
            #pragma omp for schedule(dynamic)
            for(long unsigned int breadth_idx=0; breadth_idx<virtual_module.size(); breadth_idx++){
                /* Determine thread */
                int thread_num = omp_get_thread_num();

                // Elaborate module under test
                //m_state->m_core_to_inst[0] = breadth_idx;

                /* Connect thread with breadth index */
                #pragma omp critical
                {
                    m_state->m_core_to_inst[thread_num] = breadth_idx;
                    this->m_state->m_netlist_model->set_module_under_test(virtual_module[breadth_idx]->uid(), breadth_idx);   
                    elaboration_strategies[thread_num]->initialize(this->m_settings, this->m_state);
                }

                elaboration_strategies[thread_num]->execute(this->m_settings, this->m_state);

                #pragma omp critical
                {
                    elaboration_strategies[thread_num]->report("ELABORATE", this->m_logger, this->m_settings, this->m_state);
                }
                // this->m_preprocessor->configure(elaboration_strategies[0]);
                // this->m_preprocessor->execute();
                // this->m_preprocessor->report();
            }

            /* Parallel execution of virtual modules of one stage */
            #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_preprocessor, m_analyzer, m_state)
            #pragma omp for schedule(dynamic)
            for(long unsigned int breadth_idx=0; breadth_idx<virtual_module.size(); breadth_idx++) {
                /* Determine thread */
                int thread_num = omp_get_thread_num();

                /* Connect thread with breadth index */
                #pragma omp critical
                {
                    m_state->m_core_to_inst[thread_num] = breadth_idx;
                }

                /* Execute elaboration of virtual submodule */
                // elaboration_strategies[thread_num]->execute(this->m_settings, this->m_state);

                /* Report elaboration result (need to be done on a single thread to avoid messy reporting) */
                // #pragma omp critical
                // {
                //     this->m_preprocessor->configure(elaboration_strategies[thread_num]);
                //     this->m_preprocessor->report();
                // }                

                /* Initialize probing strategy (initial frequencies) */
                if(depth_idx == 0) {
                    probing_strategies[breadth_idx]->initialize(this->m_settings, this->m_state);
                }

                /* Analyze MUTs */ 
                probing_strategies[breadth_idx]->execute(this->m_settings, this->m_state);

                /* Report verification results (need to be done on a single thread to avoid messy reporting) */
                #pragma omp critical     
                {
                    this->m_analyzer->configure(probing_strategies[breadth_idx]);
                    if (!this->m_settings->getSideChannelAnalysisRandomProbing()) this->m_analyzer->report();
                }

                /* Finalize probing strategy (transition frequencies) */
                if (depth_idx != (m_state->m_sca_partitions.size() -1)) {
                    probing_strategies[breadth_idx]->finalize(this->m_settings, this->m_state);
                }
            }

            /* Accumulated random probing reporting */
            if (this->m_settings->getSideChannelAnalysisRandomProbing()) {
                this->m_logger->header("RANDOM PROBING");
                this->m_logger->log("ANALYZER", "FFT-INDIANA", "leakage probability (stage " + std::to_string(depth_idx + 1) + ") : ");

                this->m_logger->log("ANALYZER", "FFT-INDIANA", ITEM + "max. probes  : " + std::to_string(m_settings->getSideChannelRandomProbingMaxProbes()));
                this->m_logger->log("ANALYZER", "FFT-INDIANA", ITEM + "max. samples : " + std::to_string(m_settings->getSideChannelRandomProbingMaxSamples()));
                

                std::pair<long double, long double> leakage = {1.0, 1.0};

                for(long unsigned int breadth_idx=0; breadth_idx<virtual_module.size(); breadth_idx++) {
                    std::pair<long double, long double> leakage_probability = ((ConfigurationIndistinguishabilityRandomProbing*)probing_strategies[breadth_idx])->leakage_probability();
                    
                    std::stringstream ss;
                    ss << ITEM << this->m_state->m_netlist_model->module_under_test(breadth_idx)->name() << " (min./max.) : " << std::scientific << leakage_probability.first << " / " << leakage_probability.second;
                    this->m_logger->log("ANALYZER", "FFT-INDIANA", ss.str());

                    leakage.first  *= (1.0 - leakage_probability.first);
                    leakage.second *= (1.0 - leakage_probability.second);
                }
                
                std::stringstream ss;
                ss << "total (min./max.): " << std::scientific << (1.0 - leakage.first) << " / " << (1.0 - leakage.second);
                this->m_logger->log("ANALYZER", "FFT-INDIANA", ss.str());
                this->m_logger->footer("ANALYZER", "FFT-INDIANA", SUCCESS);
            }
                    
            this->m_logger->header("FREQUENCY UPDATE");
            this->m_logger->log("ENVIRONMENT", "INDIANA", SUCCESS);

            /* Multiply frequencies */
            if(depth_idx < (m_state->m_sca_partitions.size()-1)){
                /* Delete wire BDDs */
                for(auto w : m_state->m_netlist_model->topmodule()->wires()){
                    m_state->m_netlist_model->clear_bdd_golden_function(w->uid());
                }

                // #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_preprocessor, m_analyzer, m_state)
                // #pragma omp for schedule(dynamic)
                std::vector<std::pair<ADD, ADD>> new_frequencies(m_state->m_partition_combinations[depth_idx].size());
                std::vector<Cudd_Manager> new_managers(m_state->m_partition_combinations[depth_idx].size());
                for(long unsigned int partition_idx=0; partition_idx<m_state->m_partition_combinations[depth_idx].size(); partition_idx++){                    
                    // Create new manager and receive frequencies and variables for transfer
                    Cudd_Manager new_manager = Cudd_Manager(0,0,1<<8,1<<16,m_settings->getMemory()*1024*1024*1024ull);  
                    if(m_settings->getReordering()) new_manager.AutodynEnable(CUDD_REORDER_SIFT);

                    // Create new frequencies 
                    ADD f0 = new_manager.addOne();
                    ADD f1 = new_manager.addOne();
                    std::vector<std::pair<ADD, ADD>> frequencies_to_multiply;
                    int index_cnt = 0;
                    for(auto mod_idx : m_state->m_partition_combinations[depth_idx][partition_idx]){
                        // Extract frequencies from probing strategy
                        std::pair<ADD, ADD> freq = (*probing_strategies[mod_idx]).frequencies();

                        // Index mapping
                        std::vector<ADD> functions0, functions1;
                        functions0.push_back(freq.first);
                        functions1.push_back(freq.second);

                        // Identify supporting indices of frequencies
                        std::vector<unsigned int> indices0 = m_state->m_managers[mod_idx].SupportIndices(functions0);
                        std::vector<unsigned int> indices1 = m_state->m_managers[mod_idx].SupportIndices(functions1);

                        // Determine maximum variable index of supporting variables 
                        std::vector<unsigned int> indices = (indices0.size() > indices1.size()) ? indices0 : indices1; 
                        int offset = 1;
                        if(!indices.empty()) offset = *std::max_element(indices.begin(), indices.end()) + 1;

                        // Reordering
                        if(m_settings->getReordering()){
                            if(indices.empty())
                                new_manager.AutodynDisable();
                            else
                                new_manager.AutodynEnable(CUDD_REORDER_SIFT);
                        }

                        // Transfer
                        f0 *= addTransfer(m_state->m_managers[mod_idx], new_manager, freq.first, index_cnt);
                        f1 *= addTransfer(m_state->m_managers[mod_idx], new_manager, freq.second, index_cnt);

                        // Adapt mapping for variables of next stage
                        std::vector<const verica::Wire*> wires_to_adapt;
                        for(auto w : m_state->m_sca_partitions[depth_idx][mod_idx]->output_pins()) wires_to_adapt.push_back(w->fan_out()->target_pins()[0]->fan_out());

                        for(auto p : m_state->m_externally_created_bdds){
                            if(std::find(wires_to_adapt.begin(), wires_to_adapt.end(), p.first) != wires_to_adapt.end()){
                                m_state->m_externally_created_bdds[p.first] +=  index_cnt;
                            }
                        }

                        index_cnt += offset;
                    }

                    /* Store new frequencies */
                    new_frequencies[partition_idx] = std::make_pair(f0, f1);
                    
                    /* Reordering */                    
                    if (m_settings->getReordering())
                        new_manager.ReduceHeap(CUDD_REORDER_SIFT);

                    /* Store new manager */
                    new_managers[partition_idx] = new_manager;

                    // std::cout << "-- Information about new manager --------------------" << std::endl;
                    // FILE *fp = stdout;
                    // Cudd_PrintInfo(new_manager.getManager(), fp);

                    // std::string file0 = "dot/transfered_f0_depth" + std::to_string(depth_idx) + "_part" + std::to_string(partition_idx) + ".dot";
                    // FILE *fp0 = fopen(file0.c_str(), "w+");
                    // std::vector<ADD> dump0;
                    // dump0.push_back(f0);
                    // new_manager.DumpDot(dump0, NULL, 0, fp0);
                    // fclose(fp0);

                    // std::string file1 = "dot/transfered_f1_depth" + std::to_string(depth_idx) + "_part" + std::to_string(partition_idx) + ".dot";
                    // FILE *fp1 = fopen(file1.c_str(), "w+");
                    // std::vector<ADD> dump1;
                    // dump1.push_back(f1);
                    // new_manager.DumpDot(dump1, NULL, 0, fp1);
                    // fclose(fp1);
                    // std::cout << "-- Done ---------------------------------------------" << std::endl;
                }

                // Update frequencies in verification strategies and update manager
                for(unsigned int idx=0; idx<new_frequencies.size(); idx++){
                    (*probing_strategies[idx]).clear_frequencies(m_state->m_managers[idx]);
                    (*probing_strategies[idx]).frequencies(new_frequencies[idx]);
                    m_state->m_managers[idx] = new_managers[idx];
                }

                this->m_logger->header("FREQUENCY TRANSFER");
                this->m_logger->log("ENVIRONMENT", "INDIANA", SUCCESS);
            } else {
                if (depth_idx != 0) {
                    for (size_t s = 0; s < probing_strategies.size(); s++) {
                        for(unsigned int m=0; m<m_state->m_partition_combinations[depth_idx-1].size(); m++) {
                            (*probing_strategies[s]).clear_frequencies(m_state->m_managers[m]);
                        }
                    }
                }
            }
        }
    
        for (auto strategy : probing_strategies) delete strategy;   // Fix memory leaks
    }

    // Output dot graph
    if(this->m_settings->getVisualization()){
        ConfigurationGraphvizDot visualizer{"GRAPHVIZ (DOT)"};
        this->m_visualizer->configure(&visualizer);

        // Visualize SCA
        if(this->m_settings->getSideChannelAnalysisProbing()){
            if(this->m_state->m_leaking_probes_sca.size() > 0) this->m_state->m_visualization_probes = this->m_state->m_leaking_probes_sca[0];
            visualizer.set_strategy_name("sca");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
        }

        // Visualize Probing + FIA
        if(this->m_settings->getSideChannelAnalysisProbing()){
            if(this->m_state->m_leaking_combinations_sca.size() > 0) {
                this->m_state->m_visualization_probes = this->m_state->m_leaking_combinations_sca[0];
            }
            visualizer.set_strategy_name("sca");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
        }
    }

    // Finalize
    this->m_logger->header();
    if (this->m_settings->getSideChannel())
        this->m_logger->log("INDIANA", "SCA", "DONE!");
    else
        this->m_logger->log("INDIANA", "DONE!");
}




void
Environment::analyze_sca(ConfigurationProbing &strategy, std::string name)
{
    std::vector<ConfigurationProbing> strategies{};

    /* Initialize probing strategy */
    strategy.initialize(this->m_settings, this->m_state);

    /* Initialize multi-threading strategies */
    for (unsigned int core = 0; core < this->m_settings->getCores(); core++){
        ConfigurationProbing new_strategy{name + "-CORE" + std::to_string(core)};
        strategies.push_back(new_strategy);
        strategies[core].initialize(this->m_settings, this->m_state);
    }

    /* Early-abort variable */
    bool cancel = false;

    /* Perform multi-threading analysis */
    int simulation_counter = 0;
    #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
    #pragma omp for schedule(dynamic)
    for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++){
        #pragma omp cancellation point for

        /* Thread number */
        int thread_num = omp_get_thread_num();

        /* Set current probe combination */
        strategies[thread_num].current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

        /* Analyze */
        strategies[thread_num].execute(m_settings, m_state);

        /* Early abort */
        if (!strategies[thread_num].independent() && !cancel && this->m_settings->getSideChannelInterrupt()){
            #pragma omp critical
            {
                cancel = true;
            }
            #pragma omp cancel for
        }

        /* Progress */
        #pragma omp atomic
        simulation_counter++;
        this->m_logger->progress(simulation_counter, this->m_state->m_probe_combinations[0].size());
    }

    /* Merge multi-threading results */
    for (unsigned int core = 0; core < this->m_settings->getCores(); core++){
        strategy.insert(&(strategies[core]));
    }

    /* Finalize probing strategy */
    strategy.finalize(this->m_settings, this->m_state);

    /* Report probing results */
    this->m_analyzer->configure(&strategy);
    this->m_analyzer->report();
}

template<typename T> void 
Environment::analyze_combined(T &strategy, int thread_num){
    /* Early-abort variable */
    bool cancel= false;

    /* Performing SCA analysis */
    for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel; idx++){
        /* Set current probe combination */
        strategy.current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

        /* Assign probing strategy for current thread */
        strategy.execute(this->m_settings, this->m_state);

        /* Early abort */
        cancel = (!strategy.independent() && this->m_settings->getSideChannelInterrupt());
    }
}

template<typename T> void 
Environment::report_combined(T &strategy, std::vector<T> strategies){
    for (unsigned int core = 0; core < this->m_settings->getCores(); core++){
        strategy.insert(&(strategies[core]));
    }
    strategy.finalize(this->m_settings, this->m_state);
    this->m_analyzer->configure(&strategy);
    this->m_analyzer->report();
}
