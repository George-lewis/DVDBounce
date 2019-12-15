#include <sstream>
#include <iostream>

#include "logo.h"
#include "config.h"

using DVD::Logo;

Logo::Logo(sf::RenderWindow& win): sf::Sprite(), win(win) {

    // Normalize the direction vector
	// so that the logo has the same "speed"
	// no matter the direction
    Util::normalize(this->id);

    this->d = id;

    load_images();

    this->setTexture(texs[0], true);

    scale_logo();

}

void Logo::load_images() {

    // Load images
	for (int i = 0; i < 8; i++) {

		std::stringstream filename;

		filename << "resources/dvdlogo-0" << i << ".png";

		std::cout << "Load file: \"" << filename.str() << '"' << std::endl;

		imgs[i].loadFromFile(filename.str());

        texs[i].loadFromImage(imgs[i]);

	}

}

void Logo::next_color() {

    sprite_counter++;

    this->setTexture(texs[sprite_counter % 8]);

}

// Scale the sprite according to LOGO_WIDTH_PERCENTAGE
// Explanation:
// 1. get the ratio of the sprites width to the window's width
// 2. divide our desired percentage by the current percentage
// 3. this yields our scale factor, i.e by what we need to multiply
//    so that the ratio becomes LOGO_WIDTH_PERCENTAGE
// Note: sf::Sprite.scale() is relative
void Logo::scale_logo() {

    auto ratio = width() / win.getSize().x;

	auto scale = width_percentage / ratio;

	this->scale(scale, scale);

}

void Logo::reset_pos() {

    pos = {0, 0};

    d = id;
    
}

void Logo::larger() {

    width_percentage += 0.1;
	
    if (width_percentage > Config::getFloat("LOGO_WIDTH_PERCENTAGE_UPPER_BOUND")) {
        width_percentage = Config::getFloat("LOGO_WIDTH_PERCENTAGE_UPPER_BOUND");
	}

}

void Logo::smaller() {

    width_percentage -= 0.1;

    if (width_percentage < Config::getFloat("LOGO_WIDTH_PERCENTAGE_LOWER_BOUND")) {
        width_percentage = Config::getFloat("LOGO_WIDTH_PERCENTAGE_LOWER_BOUND");
    }

}

int Logo::corners() {
    return corner_counter;
}

inline float Logo::top() { return pos.y; }

inline float Logo::bottom() { return pos.y + this->getGlobalBounds().height; }

inline float Logo::left() { return pos.x; }

inline float Logo::right() { return pos.x + this->getGlobalBounds().width; }

inline float Logo::width() { return this->getGlobalBounds().width; }

inline float Logo::height() { return this->getGlobalBounds().height; }

void Logo::tick() {

    // Update position
    pos.x += d.x * speed;
    pos.y += d.y * speed;

    this->setPosition(pos);

    // Determine if the logo bounced and off which sides
    // l = left, r = right, t = top, b = bottom
    bool bounce = false, l = false, r = false, t = false, b = false;

    const float w = win.getSize().x, h = win.getSize().y;

    // Colision detection
    if (this->right() >= w) {

        d.x = d.x * -1;

        pos = {w - this->width(), pos.y};

        r = true;

        bounce = true;

    }

    if (this->bottom() >= h) {

        d.y = d.y * -1;

        pos = {pos.x, h - this->height()};

        b = true;

        bounce = true;

    }

    if (this->left() <= 0) {

        d.x = d.x * -1;

        pos = {0, pos.y};

        l = true;

        bounce = true;

    }

    if (this->top() <= 0) {

        d.y = d.y * -1;

        pos = {pos.x, 0};

        t = true;

        bounce = true;

    }

    // Change the logo color if it bounced
    if (bounce) {

        // Not touching the wall
        if (speed != 0) {

            next_color();

        }

    }

    // Corner!
    if ( (t && l) || (t && r) || (b && l) || (b && r)) {

        // It doesn't count if the logo isn't moving!
        if (speed != 0) {

            corner_counter++;

            std::cout << "Corner! Corners so far: " << corner_counter << std::endl;

        }

    }

}