// logging.cpp
#include <iostream>
#include "logging.h"

void logInfo(const std::string& message) {
    std::cout << "[INFO]: " << message << std::endl;
}

void logError(const std::string& message) {
    std::cerr << "[ERROR]: " << message << std::endl;
}
