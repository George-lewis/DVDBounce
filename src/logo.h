#ifndef LOGO_H_GUARD
#define LOGO_H_GUARD

#include <SFML/Graphics.hpp>

#include "util.h"
#include "config.h"

namespace DVD {

    class Logo: public sf::Sprite {

        float width_percentage = Config::getFloat("LOGO_WIDTH_PERCENTAGE");

        // We will store the images here
	    // For the different colors
        sf::Image imgs[8];

        sf::Texture texs[8];

        int sprite_counter = 0, corner_counter = 0;

        // id:  Initial direction
        // d:   Direction
        // pos: Position
        sf::Vector2f id = {1, 1}, d, pos = {0, 0};

        sf::RenderWindow& win;

        void load_images();

        inline float top();
        inline float left();
        inline float bottom();
        inline float right();

        inline float width();
        inline float height();

        public:

            float speed = Config::getFloat("SPEED");

            Logo(sf::RenderWindow& win);

            void next_color();

            void scale_logo();

            void reset_pos();

            void larger();

            void smaller();

            int corners();

            void tick();

    };

}

#endif // LOGO_H_GUARD