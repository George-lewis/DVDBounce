#include <sstream>
#include <iostream>

#include "logo.h"

using DVD::Logo;

Logo::Logo(sf::RenderWindow& win): sf::Sprite(tex), win(win) {

    // Normalize the direction vector
	// so that the logo has the same "speed"
	// no matter the direction
    Util::normalize(this->id);

    this->d = id;

    load_images();

    // Load initial texture
    tex.loadFromImage(imgs[0]);

    scale_logo();

}

void Logo::load_images() {

    // Load images
	for (int i = 0; i < 8; i++) {

		std::stringstream filename;

		filename << "resources/dvdlogo-0" << i << ".png";

		std::cout << "Load file: \"" << filename.str() << '"' << std::endl;

		imgs[i].loadFromFile(filename.str());

	}

}

void Logo::next_color() {

    sprite_counter++;

    tex.loadFromImage(imgs[sprite_counter % 8]);

}

// Scale the sprite according to LOGO_WIDTH_PERCENTAGE
// Explanation:
// 1. get the ratio of the sprites width to the window's width
// 2. divide our desired percentage by the current percentage
// 3. this yields our scale factor, i.e by what we need to multiply
//    so that the ratio becomes LOGO_WIDTH_PERCENTAGE
// Note: sf::Sprite.scale() is relative
void Logo::scale_logo() {

    auto ratio = getGlobalBounds().width / win.getSize().x;

	auto scale = logo_width_percentage / ratio;

	this->scale({scale, scale});

}

void Logo::reset_pos() {

    pos = {0, 0};

    d = id;
    
}

void Logo::larger() {

    logo_width_percentage += 0.1;
	
    if (logo_width_percentage > LOGO_WIDTH_PERCENTAGE_UPPER_BOUND) {
        logo_width_percentage = LOGO_WIDTH_PERCENTAGE_UPPER_BOUND;
	}

}

void Logo::smaller() {

    logo_width_percentage -= 0.1;

    if (logo_width_percentage < LOGO_WIDTH_PERCENTAGE_LOWER_BOUND) {
        logo_width_percentage = LOGO_WIDTH_PERCENTAGE_LOWER_BOUND;
    }

}

int Logo::corners() {
    return corner_counter;
}

float Logo::top() { return this->getGlobalBounds().width; }

float Logo::bottom() { return this->getGlobalBounds().top + this->getGlobalBounds().height; }

float Logo::left() { return this->getGlobalBounds().left; }

float Logo::right() { return this->getGlobalBounds().left + this->getGlobalBounds().width; }

float Logo::width() { return this->getGlobalBounds().width; }

float Logo::height() { return this->getGlobalBounds().height; }

void Logo::tick() {

    // Update position
    pos.x += d.x * logo_speed;
    pos.y += d.y * logo_speed;

    this->setOrigin(pos);

    // Determine if the logo bounced and off which sides
    // l = left, r = right, t = top, b = bottom
    bool bounce = false, l = false, r = false, t = false, b = false;

    const float w = win.getView().getSize().x, h = win.getView().getSize().y;

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

        next_color();

    }

    // Corner!
    if ( (t && l) || (t && r) || (b && l) || (b && r)) {

        // It doesn't count if the logo isn't moving!
        if (logo_speed != 0) {

            corner_counter++;

            std::cout << "Corner! Corners so far: " << corner_counter << std::endl;

        }

    }

}