#ifndef NOVA_H
#define NOVA_H

#include <string>

class Nova {
public:
    Nova(const std::string& name);
    void observeScene(const std::string& sceneName);
private:
    std::string name;
};

#endif // NOVA_H