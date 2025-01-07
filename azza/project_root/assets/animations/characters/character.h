#ifndef CHARACTER_H
#define CHARACTER_H

#include <iostream>  // For std::cout

class Character {
public:
    virtual void run() = 0;
    virtual void jump() = 0;
    virtual void talk() = 0;
};

class Robot : public Character {
public:
    void move() const override {
        std::cout << "Robot is running..." << std::endl;
    }
};

class Human : public Character {
public:
    void move() const override {
        std::cout << "Human is running..." << std::endl;
    }
};

#endif // CHARACTER_H
