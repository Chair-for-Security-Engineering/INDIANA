/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr University Bochum
 * AUTHOR  : Felix Uhle (felix.uhle@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2024/833.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2025, Felix Uhle
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
#pragma once

#include <string>
#include <vector>

/** 
 * Checks if a file at given path is accessable
 *
 * @param conf Path to the file which should be checked
 *
 * @returns true, if file is accessable, false otherwise.
 */
bool is_file_accessable(std::string conf);

/** 
 * Generates a Vector which contains pathes to files which are used for unittests.
 *
 * @param testBaseDir is the path to a directory which contains all configs to test a component of verica
 * @param tests is a vector containing the names of all folders/tests which should be used to test the component
 * @param filter is the name of a file (often fail,find,pass,answers)
 *
 * @returns a vector of pathes, which are a concatination of the previous parameters.
 */
std::vector<std::string> generate_unittest_dataset(std::string testBaseDir, const std::vector<std::string> tests, std::string filter);

#endif