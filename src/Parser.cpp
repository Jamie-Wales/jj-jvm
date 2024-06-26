#include "Parser.h"
#include "Expression.h"
#include "ParseError.h"
#include "Statement.h"
#include "Token.h"
#include "statementTypes.h"
#include <memory>

std::vector<std::shared_ptr<Statement>> Parser::parse()
{
    std::vector<std::shared_ptr<Statement>> statements;
    while (!isAtEnd()) {
        statements.push_back(declaration());
    }
    return statements;
}

std::shared_ptr<Statement> Parser::blockStatement()
{
    std::vector<std::shared_ptr<Statement>> statements;
    while (!check(TokenType::RIGHT_BRACE) && !isAtEnd()) {
        statements.push_back(declaration());
    }
    consume(TokenType::RIGHT_BRACE, "Expect '}' after block.");
    return std::make_shared<Statement>(Statement { Block { statements } });
}

std::shared_ptr<Statement> Parser::declaration()
{
    try {
        if (match({ TokenType::JJ }))
            return jjdeclaration();
        if (match({ TokenType::FUNC }))
            return function("Function");
        return statement();
    } catch (ParseError& error) {
        synchronize();
        return nullptr;
    }
}

std::shared_ptr<Statement> Parser::function(std::string kind)
{

    Token name = consume(TokenType::IDENTIFIER, "Expect " + kind + " name.");
    consume(TokenType::LEFT_PAREN, "Expect '(' after " + kind + " name.");
    std::vector<Token> parameters = {};
    if (!check(TokenType::RIGHT_PAREN)) {
        do {
            if (parameters.size() >= 255) {
                error(peek(), "Can't have more than 255 parameters.");
            }
            parameters.push_back(consume(TokenType::IDENTIFIER, "Expect parameter name."));
        } while (match({ TokenType::COMMA }));
    }
    consume(TokenType::RIGHT_PAREN, "Expect ')' after parameters.");
    consume(TokenType::LEFT_BRACE, "Expect '{' before " + kind + " body.");
    auto body = blockStatement();
    return std::make_shared<Statement>(Function { name, parameters, body });
}

std::shared_ptr<Statement> Parser::jjdeclaration()
{
    auto name = consume(TokenType::IDENTIFIER, "Expect variable name.");
    auto expr = Expr { ExprType::LITERAL, Literal { nullptr } };
    auto value = std::make_shared<Expr>(expr);
    if (match({ TokenType::EQUAL }))
        value = expression();
    consume(TokenType::SEMICOLON, "Expect ';' after value.");
    return std::make_shared<Statement>(Statement { JJStatement { name, value } });
}

std::shared_ptr<Statement> Parser::expressionStatement()
{
    auto expr = expression();
    consume(TokenType::SEMICOLON, "Expect ';' after expression.");
    return std::make_shared<Statement>(Statement { ExprStatement { expr } });
}

std::shared_ptr<Expr> Parser::assignment()
{
    auto expr = logicalOR();

    if (match({ TokenType::EQUAL })) {
        Token equals = previous();
        auto value = assignment();
        if (expr->type == ExprType::VARIABLE) {
            auto var = std::get<Variable>(expr->content);
            Token name = var.name;
            auto newExpr = Expr { ExprType::ASSIGNMENT, Assign { name, value } };
            return std::make_shared<Expr>(newExpr);
        }
        error(equals, "Invalid assignment target");
    }

    return expr;
}

std::shared_ptr<Statement> Parser::statement()
{
    if (match({ TokenType::WHILE }))
        return whileStatement();
    if (match({ TokenType::LOG }))
        return printStatement();
    if (match({ TokenType::LEFT_BRACE }))
        return blockStatement();
    if (match({ TokenType::IF }))
        return ifStatement();
    return expressionStatement();
}

std::shared_ptr<Statement> Parser::whileStatement()
{
    consume(TokenType::LEFT_PAREN, "Expect '(' after while");
    auto condition = expression();
    consume(TokenType::RIGHT_PAREN, "Expect ')' after expression");
    auto body = statement();
    return std::make_shared<Statement>(While { condition, body });
}

/* Returns null for else block if else block does not exist */
std::shared_ptr<Statement> Parser::ifStatement()
{
    const auto expr = expression();
    std::shared_ptr<Statement> ifBlock = nullptr;
    std::shared_ptr<Statement> elseBlock = nullptr;
    if (match({ TokenType::LEFT_BRACE })) {
        ifBlock = blockStatement();
    } else {
        throw ParseError { peek(), "Expected { but recieved " };
    }
    if (match({ TokenType::ELSE })) {
        if (match({ TokenType::LEFT_BRACE })) {
            elseBlock = blockStatement();
        } else {
            throw ParseError { peek(), "Expected { but recieved " };
        }
    }
    return std::make_shared<Statement>(IfStatement { expr, ifBlock, elseBlock });
}

std::shared_ptr<Statement> Parser::printStatement()
{
    const auto value = expression();
    consume(TokenType::SEMICOLON, "Expect ';' after value.");
    auto stmt = std::make_shared<Statement>(Statement { PrintStatement { value } });
    return stmt;
}

std::shared_ptr<Expr> Parser::expression()
{
    return assignment();
}

std::shared_ptr<Expr> Parser::comma()
{
    auto expr = logicalOR();
    while (match({ TokenType::COMMA })) {
        auto opr = previous();
        const auto right = logicalOR();
        expr = std::make_shared<Expr>(ExprType::LOGICAL, Logical { expr, opr, right });
    }

    return expr;
}

std::shared_ptr<Expr> Parser::logicalOR()
{
    auto expr = logicalAND();
    while (match({ TokenType::OR })) {
        auto opr = previous();
        const auto right = logicalAND();
        expr = std::make_shared<Expr>(ExprType::LOGICAL, Logical { expr, opr, right });
    }

    return expr;
}

std::shared_ptr<Expr> Parser::logicalAND()
{
    auto expr = ternary();
    while (match({ TokenType::AND })) {
        auto opr = previous();
        const auto right = ternary();
        expr = std::make_shared<Expr>(ExprType::LOGICAL, Logical { expr, opr, right });
    }

    return expr;
}

std::shared_ptr<Expr> Parser::ternary()
{
    auto condition = equality();
    if (match({ TokenType::QUESTION_MARK })) {
        auto oper = previous();
        const auto trueBranch = equality();
        consume(TokenType::COLON, "Expect ':' after expression.");
        const auto falseBranch = equality();
        return std::make_shared<Expr>(ExprType::TERNARY, Ternary { condition, trueBranch, falseBranch });
    }

    return condition;
}

std::shared_ptr<Expr> Parser::equality()
{
    auto expr = comparison();

    while (match({ TokenType::BANG_EQUAL, TokenType::EQUAL_EQUAL })) {
        const auto opr = previous();
        const auto right = comparison();
        expr = std::make_shared<Expr>(ExprType::BINARY, Binary { expr, opr, right });
    };

    return expr;
}

std::shared_ptr<Expr> Parser::comparison()
{
    auto expr = term();

    while (match({ TokenType::GREATER, TokenType::GREATER_EQUAL, TokenType::LESS, TokenType::LESS_EQUAL })) {
        const Token opr = previous();
        const auto right = term();
        expr = std::make_shared<Expr>(ExprType::BINARY, Binary { expr, opr, right });
    };

    return expr;
}

std::shared_ptr<Expr> Parser::term()
{
    auto expr = factor();

    while (match({ TokenType::PLUS, TokenType::MINUS })) {
        const Token opr = previous();
        const auto right = factor();
        expr = std::make_shared<Expr>(ExprType::BINARY, Binary { expr, opr, right });
    };

    return expr;
}

std::shared_ptr<Expr> Parser::factor()
{
    auto expr = unary();
    while (match({ TokenType::SLASH, TokenType::STAR })) {
        const Token oper = previous();
        const auto right = unary();
        expr = std::make_shared<Expr>(ExprType::BINARY, Binary { expr, oper, right });
    }

    return expr; // Return the built-up expression.
}

std::shared_ptr<Expr> Parser::unary()
{
    while (match({ TokenType::BANG, TokenType::MINUS })) {
        const Token oper = previous();
        const auto right = unary();
        return std::make_shared<Expr>(ExprType::UNARY, Unary { oper, right });
    }

    return call();
}

std::shared_ptr<Expr> Parser::call()
{
    auto expr = primary();
    while (true) {
        if (match({ TokenType::LEFT_PAREN })) {
            if (expr->type != ExprType::VARIABLE) {
                throw new ParseError(peek(), "Can only call variable types");
            }
            expr = finishCall(expr);
        } else {
            break;
        }
    }

    return expr;
}

std::shared_ptr<Expr> Parser::finishCall(std::shared_ptr<Expr> callee)
{
    std::vector<std::shared_ptr<Expr>> arguments = {};
    if (!check(TokenType::RIGHT_PAREN)) {
        do {
            if (arguments.size() >= 255) {
                error(peek(), "Can't have more than 255 arguments.");
            }
            arguments.push_back(expression());
        } while (match({ TokenType::COMMA }));
    }

    Token paren = consume(TokenType::RIGHT_PAREN,
        "Expect ')' after arguments.");

    return std::make_shared<Expr>(ExprType::CALL, Call { callee, arguments });
}

std::shared_ptr<Expr> Parser::primary()
{
    if (match({ TokenType::IDENTIFIER }))
        return std::make_shared<Expr>(ExprType::VARIABLE, Variable { previous() });
    if (match({ TokenType::FALSE }))
        return std::make_shared<Expr>(ExprType::LITERAL, Literal { true });
    if (match({ TokenType::TRUE }))
        return std::make_shared<Expr>(ExprType::LITERAL, Literal { false });
    if (match({ TokenType::NIL }))
        return std::make_shared<Expr>(ExprType::LITERAL, Literal { nullptr });
    if (match({ TokenType::NUMBER }))
        return std::make_shared<Expr>(ExprType::LITERAL, Literal { previous().literal });
    if (match({ TokenType::STRING }))
        return std::make_shared<Expr>(ExprType::LITERAL, Literal { previous().literal });
    if (match({ TokenType::LEFT_PAREN })) {
        auto expr = expression();
        consume(TokenType::RIGHT_PAREN, "Expect ')' after expression.");
        return std::make_shared<Expr>(ExprType::GROUPING, Grouping { expr });
    };
    throw ParseError { peek(), "unexpected expression" };
};

bool Parser::match(const std::initializer_list<TokenType>& types)
{
    for (auto& type : types) {
        if (check(type)) {
            advance();
            return true;
        }
    }
    return false;
}

Token& Parser::previous()
{
    return tokens.at(current - 1);
}

Token& Parser::consume(const TokenType type, const std::string& message)
{
    if (check(type))
        return advance();
    throw error(peek(), message);
}

ParseError Parser::error(Token& token, const std::string& message)
{
    err.handlerError(token.line, message);
    return ParseError(token, message);
}

bool Parser::check(TokenType type)
{
    if (isAtEnd())
        return false;
    return tokens[current].type == type;
}

Token& Parser::peek()
{
    return tokens.at(current);
}

Token& Parser::advance()
{
    if (!isAtEnd()) {
        current++;
    }
    return previous();
}

bool Parser::isAtEnd()
{
    return peek().type == TokenType::ENDOFFILE;
}

void Parser::synchronize()
{
    advance();

    while (!isAtEnd()) {
        if (previous().type == TokenType::SEMICOLON)
            return;

        switch (peek().type) {
        case TokenType::CLASS:
        case TokenType::FUNC:
        case TokenType::JJ:
        case TokenType::FOR:
        case TokenType::IF:
        case TokenType::WHILE:
        case TokenType::LOG:
        case TokenType::RETURN:
            return;
        }

        advance();
    }
}
