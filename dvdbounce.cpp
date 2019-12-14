#include <iostream>
#include <math.h>
#include <stdio.h>
#include <sstream>

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

// This is the % width of the window
// That the logo should take up
#define LOGO_WIDTH_PERCENTAGE 0.3
// Title of the window
#define WINDOW_TITLE "DVD Bouncer Super Deluxe"
// The default window size as a fraction of the screen size
// EX: 4 -> 1/4 the width of the screen
#define WINDOW_DEFAULT_FRACTION 4
// Number of miliseconds between each movement
#define LOGO_MILISECOND_TICK 5

// Normalizes a vector
void normalize(sf::Vector2f& vec) {

	float magnitude = sqrt(vec.x*vec.x + vec.y*vec.y);

	vec.x = vec.x / magnitude;
	vec.y = vec.y / magnitude;

}

int main(int argc, char** argv) {

	std::cout << "Welcome to DVD Bounce, enjoy the retro" << std::endl;

	// We will store the images here
	// For the different colors
	sf::Image imgs[8] = {};

	// Load images
	for (int i = 0; i < 8; i++) {

		std::stringstream filename;

		filename << "resources/dvdlogo-0" << i << ".png";

		std::cout << "Load file: \"" << filename.str() << '"' << std::endl;

		imgs[i].loadFromFile(filename.str());

	}

	int logo_counter = 0, corner_counter = 0;

	sf::Texture tex;

	// Load initial texture
	tex.loadFromImage(imgs[logo_counter]);

	sf::Sprite spr{tex};

	auto width = sf::VideoMode::getDesktopMode().width;

	// Create the window
	sf::RenderWindow window(sf::VideoMode(width / WINDOW_DEFAULT_FRACTION, width / WINDOW_DEFAULT_FRACTION), WINDOW_TITLE);

	bool fullscreen = false;

	// Scale the sprite according to LOGO_WIDTH_PERCENTAGE
	// Explanation:
	// 1. get the ratio of the sprites width to the window's width
	// 2. divide our desired percentage by the current percentage
	// 3. this yields our scale factor, i.e by what we need to multiply
	//    so that the ratio becomes LOGO_WIDTH_PERCENTAGE
	// Note: sf::Sprite.scale() is relative
	auto ratio = spr.getGlobalBounds().width / (width/4);

	auto scale = LOGO_WIDTH_PERCENTAGE / ratio;

	spr.scale({scale, scale});

	// id:  Initial direction
	// d:   Direction
	// pos: Position
	sf::Vector2f id {-1, -1}, d{id}, pos {0,0};

	// Normalize the direction vector
	// so that the logo has the same "speed"
	// no matter the direction
	normalize(d);

	sf::Clock clock;

	// Event loop
    while (window.isOpen())
    {
        sf::Event event;

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
			else if (event.type == sf::Event::Resized) {
				
				// Modify the view size
				window.setView(sf::View(sf::FloatRect(0, 0, event.size.width, event.size.height)));

				// Reset the position
				pos = {0, 0};

				// Reset the direction
				d = id;

				normalize(d);

				// Rescale the logo
				auto ratio = spr.getGlobalBounds().width / event.size.width;

				auto scale = LOGO_WIDTH_PERCENTAGE / ratio;

				spr.scale({scale, scale});

			} else if (event.type == sf::Event::KeyPressed) {
				if (event.key.code == sf::Keyboard::F) {
					if (!fullscreen) {

						window.create(sf::VideoMode::getFullscreenModes()[0], WINDOW_TITLE, sf::Style::Fullscreen);

						fullscreen = true;

					} else {

						auto width = sf::VideoMode::getDesktopMode().width;

						window.create(sf::VideoMode(width / WINDOW_DEFAULT_FRACTION, width / WINDOW_DEFAULT_FRACTION), WINDOW_TITLE);

						fullscreen = false;

					}
				}
			}
        }

        window.clear();

		// Only move the logo every LOGO_MILISECOND_TICK miliseconds
		if (clock.getElapsedTime().asMilliseconds() >= LOGO_MILISECOND_TICK) {

			// Update position
			pos.x += d.x;
			pos.y += d.y;

			spr.setOrigin(pos);

			// Determine if the logo bounced and off which sides
			// l = left, r = right, t = top, b = bottom
			bool bounce = false, l = false, r = false, t = false, b = false;

			const float w = window.getView().getSize().x, h = window.getView().getSize().y;

			// Colision detection

			if (spr.getGlobalBounds().left + spr.getGlobalBounds().width >= w) {

				d.x = d.x * -1;

				r = true;

				bounce = true;

			}

			if (spr.getGlobalBounds().top + spr.getGlobalBounds().height >= h) {

				d.y = d.y * -1;

				 b = true;

				bounce = true;

			}

			if (spr.getGlobalBounds().left <= 0) {

				d.x = d.x * -1;

				l = true;

				bounce = true;

			}

			if (spr.getGlobalBounds().top <= 0) {

				d.y = d.y * -1;

				t = true;

				bounce = true;

			}

			// Change the logo color if it bounced
			if (bounce) {

				logo_counter++;

				tex.loadFromImage(imgs[logo_counter % 8]);

			}

			// Corner!
			if (t && l || t && r || b && l || b && r) {

				corner_counter++;

				std::cout << "Corner! Corners so far: " << corner_counter << std::endl;

			}

			clock.restart();
		
		}

		window.draw(spr);

        window.display();

    }

	return 0;
 
}