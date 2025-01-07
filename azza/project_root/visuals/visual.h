// visuals.h
#ifndef VISUALS_H
#define VISUALS_H

#include "character.h"

class Visuals {
public:
    void renderCharacter(const Character& character) {  // const reference is now allowed
        character.move();  // Call move() to simulate actions
    }
};

#endif
