#ifndef SCENE_H
#define SCENE_H

#include <string>

class Scene {
public:
    Scene(const std::string& name, const std::string& description);
    std::string getName() const;

private:
    std::string name;
    std::string description;
};

#endif // SCENE_H