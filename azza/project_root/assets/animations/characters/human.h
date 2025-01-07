#ifndef HUMAN_H
#define HUMAN_H

#include "character.h"

class Human : public Character {
public:
    void run() override;
    void jump() override;
    void talk() override;
};

#endif // HUMAN_H