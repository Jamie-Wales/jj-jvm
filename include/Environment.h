#ifndef INCLUDE_ENVIRONMENT_H_
#define INCLUDE_ENVIRONMENT_H_
#include "AssemblyInfo.h"
#include <memory>
#include <unordered_map>

struct EnvVariable {
    std::string name;
    AssemblyInfo info;
    size_t index;
};

class Environment {
public:
    size_t varibleCount = 0;
    std::unordered_map<std::string, EnvVariable> variables;
    Environment() = default;
    void define(const std::string name, AssemblyInfo info)
    {
        EnvVariable var = { name, info, varibleCount };
        variables[name] = var;
        varibleCount++;
    }

    std::shared_ptr<EnvVariable> get(const std::string name)
    {
        for (auto& [index, value] : variables) {
            if (index == name) {
                return std::make_shared<EnvVariable>(value);
            }
        }
        return nullptr;
    }
};

#endif // INCLUDE_INCLUDE_ENVIRONMENT_H_
