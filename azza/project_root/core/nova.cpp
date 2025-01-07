#include "nova.h"
#include <iostream>

Nova::Nova(const std::string& name) : name(name) {}

void Nova::observeScene(const std::string& sceneName) {
    std::cout << name << " is observing the scene: " << sceneName << std::endl;
}