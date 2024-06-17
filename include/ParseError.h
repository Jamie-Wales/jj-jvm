#ifndef INCLUDE_PARSEERROR_H_
#define INCLUDE_PARSEERROR_H_

#include "Token.h"
#include <stdexcept>
#include <string>

class ParseError final : public std::runtime_error {
public:
    explicit ParseError(const Token &token, const std::string &message)
        : runtime_error(token.toString() + " " + message) {
    }
};

#endif
