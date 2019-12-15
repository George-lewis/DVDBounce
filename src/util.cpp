#include "util.h"

void Util::normalize(sf::Vector2f& vec) {

    float magnitude = sqrt(vec.x*vec.x + vec.y*vec.y);

    if (magnitude > 0) {

        vec.x = vec.x / magnitude;
        vec.y = vec.y / magnitude;

    }

}