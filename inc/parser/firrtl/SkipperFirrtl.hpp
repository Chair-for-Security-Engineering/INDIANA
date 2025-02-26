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

#ifndef __INDIANA_PARSER_FIRRTL_SKIPPER_FIRRTL_HPP_
#define __INDIANA_PARSER_FIRRTL_SKIPPER_FIRRTL_HPP_

#include "boost/spirit/include/qi.hpp"

template<typename Iterator>
class SkipperFirrtl : public boost::spirit::qi::grammar<Iterator>
{
    public:
        SkipperFirrtl() : SkipperFirrtl::base_type(SKIPPER) 
        {
            /* RULE DEFINITIONS: SKIPPER */
            SINGLE_LINE_COMMENT = ';' >> *(boost::spirit::qi::char_ - boost::spirit::qi::eol) >> (boost::spirit::qi::eol) ;
            SKIPPER = boost::spirit::qi::ascii::space | SINGLE_LINE_COMMENT;
        }

    private:
        /* RULE DECLARATIONS: SKIPPER */
        boost::spirit::qi::rule<Iterator> SKIPPER, SINGLE_LINE_COMMENT;
};

#endif // __INDIANA_PARSER_FIRRTL_SKIPPER_FIRRTL_HPP_