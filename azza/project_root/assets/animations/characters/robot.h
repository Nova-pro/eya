#ifndef ROBOT_H
#define ROBOT_H

#include "character.h"

class Robot : public Character {
public:
    void run() override;
    void jump() override;
    void talk() override;
};

#endif // ROBOT_H