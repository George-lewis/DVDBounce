#include <SFML/Graphics.hpp>

#include "util.h"

// This is the % width of the window
// That the logo should take up
#define LOGO_WIDTH_PERCENTAGE 0.3
#define LOGO_WIDTH_PERCENTAGE_UPPER_BOUND 0.8
#define LOGO_WIDTH_PERCENTAGE_LOWER_BOUND 0.1
#define LOGO_MILISECOND_TICK 5
// Multiplicate of the direction vector
#define LOGO_SPEED 3

namespace DVD {

    class Logo: public sf::Sprite {

        float logo_width_percentage = LOGO_WIDTH_PERCENTAGE;

        // We will store the images here
	    // For the different colors
        sf::Image imgs[8];

        int sprite_counter = 0, corner_counter = 0;

        // id:  Initial direction
        // d:   Direction
        // pos: Position
        sf::Vector2f id = {-1, -1}, d, pos = {0, 0};

        sf::Texture tex{};

        sf::RenderWindow& win;

        void load_images();

        public:

            float logo_speed = LOGO_SPEED;

            Logo(sf::RenderWindow& win);

            void next_color();

            void scale_logo();

            void reset_pos();

            void larger();

            void smaller();

            int corners();

            void tick();

            inline float top();
            inline float left();
            inline float bottom();
            inline float right();

            inline float width();
            inline float height();

    };

}