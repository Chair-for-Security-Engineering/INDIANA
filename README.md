# INDIANA – Verifying (Random) Probing Security through Indistinguishability Analysis

This repository contains the source code for the paper [**INDIANA – Verifying (Random) Probing Security through Indistinguishability Analysis**](https://eprint.iacr.org/2024/833.pdf). 


## 1. Features

INDIANA is a framework written in `C++` to formally verify given digital logic circuits (as Verilog netlist or as instruction list) for their resistance against side-channel attacks, fault-injection attacks, and combined attacks.


## 2. Contact and Support

Please contact Pascal Sasdrich (pascal.sasdrich@rub.de) or Jan Richter-Brockmann (jan.richter-brockmann@rub.de) if you have any questions, comments, if you found a bug that should be corrected, or if you want to reuse the framework or parts of it for your own research projects. 


## 3. Build Instructions

INDIANA can be build directly from the sources and execute the binaries.

To build INDIANA directly from the sources and execute the binaries, please follow the instructions below:

1. Download the source code of INDIANA. 
2. Download and unpack the [Boost Graph Library (BGL)](https://www.boost.org/doc/libs/1_71_0/more/getting_started/unix-variants.html) library.
3. `cd boost_1_71_0`
4. `./bootstrap.sh --prefix=/path/to/INDIANA --with-libraries=program_options`
5. `./b2 install`
6. Download and unpack the [CUDD](https://github.com/ivmai/cudd) library.
7. `cd cudd/`
8. `./configure --prefix=/path/to/INDIANA --enable-shared --enable-obj`
9. `make check`
10. `make install`
11. Change directory to the INDIANA folder. 
12. If necessary, update the `INCLUDES` variable in the INDIANA makefile with the path to your copy of BGL (i.e., `/path/to/INDIANA/include/` as selected as prefix in step 4).
13. `make release`


## 4. Quick Start

After INDIANA was successfully build, it can be executed by `bin/release/indiana -c config/indiana-example.json`. The configuration file (i.e., `config/indiana-example.json`) can be adapted according to [Section 4.1](#41-configure-INDIANA). Executing INDIANA with the configuration file `config/indiana-example.json`, should result in the output given in [Section 4.2](#42-expected-output).

### 4.1 Configure INDIANA

INDIANA can easily be configured via a configuration file written in json. In the following, we briefly describe possible settings and their functionalities. 

Parent              | Parameter                       | Allowed Parameter                             | Description
--------------------|---------------------------------|-----------------------------------------------|----------------------
`general`           | `verbose`                       | 0,1,2,3                                       | Verbosity level.
--                  | `cores`                         | 0-X                                           | Number of cores that should be used by INDIANA. Settings `cores` to zero, automatically selects the  maximum available cores        
--                  | `memory`                        | positive integer                              | Memory used by each core in GB.
--                  | `netlist/file`                  | Valid path                                    | Path to the Verilog description of the circuit under test.
--                  | `netlist/name`                  | --                                            | Not supported yet.
--                  | `netlist/module`                | --                                            | Not supported yet.
--                  | `library/file`                  | `cell/Instructions.txt`, `cell/nang45.txt`    | Description of supported gate types. Use `Instructions.txt` to process `.nl` files, and `nang45.txt` to process Verilog gate level netlists.
--                  | `library/name`                  | String                                        | Name of the cell. If using `Instructions.txt` set it to `NL`, if using `nang45.txt` set it to `NANG45`.
--                  | `filtering/sca/type`            | `none`, `white`, `black`                      | Type of filtering that should be applied to the SCA verification.
--                  | `filtering/sca/whitelist`       | Valid path                                    | Path to file containing modules that should be whitelisted for the SCA verification.
--                  | `filtering/sca/blacklist`       | Valid path                                    | Path to file containing modules that should be blacklisted for the SCA verification.
--                  | `annotation/file`               | Valid path                                    | Path to a json file containing possible annotations for inputs and outputs. This is mandatory for shared implementations (share domain and share index need to be set).
--                  | `annotation/apply`              | `true`, `false`                               | Indicates if the annotations should be parsed and applied or not.
--                  | `cudd/reordering`               | `true`, `false`                               | Enables a dynamic reordering of BDDs supported by the CUDD library. In most cases, INDIANA is faster with disabled dynamic reordering.
`side-channel`      | `enable`                        | `true`, `false`                               | Enables/disables side-channel verification.
--                  | `configuration/order`           | 0-X                                           | Determines the security order that should be analyzed. If the order is set to 0, INDIANA automatically determines the highest possible security order.
--                  | `configuration/masking`         | 0, 1                                          | Select between Boolean masking (0) and arithmetic masking (1, not tested yet).
--                  | `configuration/interrupt`       | `true`, `false`                               | Interrupts the side-channel verification process in case a security flaw is detected (use with caution - not tested yet). Not fully implemented yet!
--                  | `model/glitches`                | `true`, `false`                               | Use the glitch-extended $d$-probing model.
--                  | `model/transitions`             | `true`, `false`                               | Not supported yet!
--                  | `model/couplings`               | `true`, `false`                               | Not supported yet!
--                  | `analysis/uniformity`           | `true`, `false`                               | Check uniformity of the circuit under test.
--                  | `analysis/probing`              | `true`, `false`                               | Enables/disables verification in the $d$-probing model.
--                  | `analysis/random-probing`       | `true`, `false`                               | Enables/disables verification in the random probing model.
--                  | `random-probing/copy-gates`     | `none`, `software`, `hardware`                | Considers different realizations of copy gates (none, software, hardware).
--                  | `random-probing/cycle-accurate` | `none`, `software`, `hardware`                | Enables/disables cycle accurate verification in the random probing model.
--                  | `random-probing/probability`    | probability (value between 0 and 1)           | Determines the leakage probability of each wire. 
--                  | `random-probing/max-probes`     | 0-X                                           | Sets the number of probes per partition (0: all possible probes are used).
--                  | `random-probing/max-samples`    | 0-X                                           | Determines the number of samples that are taken per partition (0: exhaustive analysis).


### 4.2 Expected Output

If INDIANA is executed with the exemplary configuration file `config/indiana_example.json`, the output should be the same as in `config/indiana_example.md`.

## 5. Architecture

The main file `indiana.cpp` of INDIANA only creates an object `Environment` which handles the entire verification. An environment object consists of a settings object, a state object, and a logger. The `settings` object parses at the time of construction the forwarded `config`-file and stores all settings while providing corresponding access functions. The `state` object is used to store global variables and data (e.g., the netlist model, information about the SCA verification, etc.). The logger is used to create consistent outputs throughout the entire preprocessing and verification.

Besides these basic objects, INDIANA creates four additional "configuration" objects: `parser`, `preprocessor`, `analyzer`, and `visualizer`. The `parser` object reads the cell library and accepts parsing strategies that are able to parse `FIRRTL`, `VERILOG`, and `NETLIST` files. The `FIRRTL` and `VERILOG` parser utilize the BOOST library. Independent of the netlist format, INDIANA generates a model of the circuit under test which is stored in a `netlist` object. Each netlist model consists of `modules`, `wires`, and `pins`. The final circuit model is stored in the `state` object.

The `preprocessor` object takes care of many different steps. First, the `annotation.json` file is loaded and parsed. The parsed information is added to the netlist model. Second, a `filtering` strategy is loaded to the preprocessor which applies the black- and whitelists to the model. Third, a `multi-threading` object is loaded which prepares the framework for parallel executions of the verification. Fourth, a `model-postprocessing` is applied which has several tasks. The first task ist to remove all clock and control networks from the netlist model. Afterwards, unconnected pins and wires are removed. Eventually, all wires from the netlist model are sorted in a topological order. Fifth, INDIANA applies a partition strategy separating the module under test in its register stages. Additionally, the partition strategy tries to find secret-independent subcircuiits within each register stage. Each of this partition can be elaborated and analyzed independently. Sixth, a `SCA` strategy is loaded into the preprocessor which determines all valid probe combinations for the SCA verification.

Based on the configuration file, two different SCA analysis strategies can be loaded and executed. Both strategies are implemented in the `analyzer/` folder. `ConfigurationIndistinguishabilityProbing` implements the verification in the threshold probing model. `ConfigurationIndistinguishabilityRandomProbing` implements the verification in the random-probing model. 

Eventually, INDIANA supports the visualization as a `.dot`-graph of the design under test. It is possible to create a graph for the entire netlist model or only for the part that is involved in security violations. 

 
## 6. Synopsis Design Compiler

Most of the examples in the repository are generated with Synopsis Design Compiler using the standard cell library NANG45. The following commands should be used for the synthesis script in order to generate a Verilog gate-level netlist that can be processed by INDIANA.

```
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
```

Additionally, you can use the flowing commands to force the synthesizer to compile, keep the hierarchy and make a flattened netlist of the design.

```
compile -map_effort medium -area_effort medium
compile_ultra -no_autoungroup
ungroup -all -flatten
```

## 7. Troubleshooting

Here are some common issues you may encounter during execution along with possible fixes.

### 7.1 Shared libraries (libcudd-3.0.0.so)

In case you get an error message similar to: 

```
./bin/release/INDIANA: error while loading shared libraries: libcudd-3.0.0.so.0: cannot open shared object file: No such file or directory
```

please export the `/lib` directory to your linker library path, e.g., using 
```
export LD_LIBRARY_PATH=`pwd`/lib
```
before executing the binary.

### 7.2 aclocal-1.14 is missing on your system

If you get an error message similar as below when executing `make check` for the CUDD package, you can use the command `autoreconf` to reconfigure the configurations. Afterwards, `make check` should work without any issues.

```
CDPATH="${ZSH_VERSION+.}:" && cd . && /bin/bash /home/jrichter/cudd/build-aux/missing aclocal-1.14 -I m4
/home/jrichter/cudd/build-aux/missing: line 81: aclocal-1.14: command not found
WARNING: 'aclocal-1.14' is missing on your system.
         You should only need it if you modified 'acinclude.m4' or
         'configure.ac' or m4 files included by 'configure.ac'.
         The 'aclocal' program is part of the GNU Automake package:
         <http://www.gnu.org/software/automake>
         It also requires GNU Autoconf, GNU m4 and Perl in order to run:
         <http://www.gnu.org/software/autoconf>
         <http://www.gnu.org/software/m4/>
         <http://www.perl.org/>
make: *** [Makefile:983: aclocal.m4] Error 127
```

## 8. Containerize INDIANA using Docker

INDIANA can also be executed in a Docker container. The repository contains the necessary Dockerfile to build the container. This section briefly covers how to setup the Docker container for INDIANA.

### 8.1 Install Docker

You need a current Docker installation and appropriate rights on the host machine to run the following commands. Tutorials on how to set up Docker can be found here:

* [Windows (Docker Desktop)](https://docs.docker.com/desktop/windows/install/)
* [macOS (Docker Desktop)](https://docs.docker.com/desktop/mac/install/)
* [Ubuntu (Docker Engine)](https://docs.docker.com/engine/install/ubuntu/)
* [Debian (Docker Engine)](https://docs.docker.com/engine/install/debian/)


### 8.2 Building the Docker Image

Starting from the local directory containing the INDIANA repository, run the following command to build the Docker image.

`docker build -t indiana .`

Alternatively, [Docker Compose](https://docs.docker.com/compose/) can be used to build the image.

`docker-compose build`

Both commands build a Docker image from the release version of INDIANA using the Makefile. After the building process has successfully finished, the image will be labeled as indiana:latest_.

### 8.3 Running the container

After the Docker image has been successfully built, run the following command to execute the application in a container.

`docker run indiana`

If INDIANA is executed with the exemplary configuration file `config/docker.json`, the output should be the same as in `config/indiana_example.md`.

### 8.4 Sharing data between the host and containers

Depending on the use case, it may be useful to exchange files between the host system and containers.\
The following commands show how to use volumes and mount binds as data exchange mechanisms. 

#### 8.4.1 Use volumes as persistent memory

Volumes allow the user to store files in a persistent memory. Additionally, volumes can be shared between multiple containers.\
One possible use case for INDIANA is to store output files, such as logs, in a volume. Using a volume, these output files will not be deleted after the execution of the application is finished.

To create a new volume, run the following command:

`docker volume create IndianaOut`

This command creates a new container named _IndianaOut_ on the host machine.

To use the volume in a container, use the following command to run the container:

`docker run -v IndianaOut:/usr/src/indiana/log indiana`

After that, the volume _IndianaOut_ is mounted into the directory _/usr/src/indiana/log_ of the container. This directory can then internally be used to create log files which persist even after the container stops running.

#### 8.4.2 Use mount binds to use files from the host machine 

Mount binds allow the user to bind directories on the host machine into the container.\
One possible use case for INDIANA is to use configuration and netlist files, which we want to be dynamically adjustable and independent from the container image.

To use mount binds, use the following command to run the container:

`docker run -v ${PWD}/config:/usr/src/indiana/config indiana`

This command mounts the subfolder _/config_ of the current working directory of the host machine into the directory _/user/src/indiana/config_ of the container. In this example, the configuration files for the application are obtained from the directory of the host machine instead of the directory which is built from the image. This makes it possible to change the configuration of INDIANA without the need to built a whole new image.

Note that this command is very similar to the previous command. However, no previously created volumes are used here. The configuration file can be adapted according to [Section 4.1](#41-configure-indiana).


## 9. Licensing

Copyright (c) 2025, Pascal Sasdrich and Jan Richter-Brockmann.
All rights reserved.

Please see `LICENSE` for further license instructions.

## 10. Publications

1. Christof Beierle, Jakob Feldtkeller, Anna Guinet, Tim Güneysu, Gregor Leander, Jan Richter-Brockmann, Pascal Sasdrich: [INDIANA – Verifying (Random) Probing Security through Indistinguishability Analysis](https://eprint.iacr.org/2024/833.pdf). EUROCRYPT 2025

### 10.1 Reproduce results of the case studies

In order to reproduce the results of the case studies from the papers, we prepared a dedicated folder `case-studies/` which contains all configuration files that were used to generate the evaluation results. 
