#include <iostream>
#include <math.h>
#include <sstream>

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

#include "logo.h"
#include "main.h"
#include "config.h"

using Config = DVD::Config;

int main(int argc, char** argv) {

	std::cout << "Welcome to DVD Bounce v" << VERSION << ", enjoy the retro" << std::endl;

	DVD::Config::readConfig();

	auto width = sf::VideoMode::getDesktopMode().width;

	// Create the window
	sf::RenderWindow window(sf::VideoMode(width / Config::getFloat("WINDOW_DEFAULT_FRACTION"), width / Config::getFloat("WINDOW_DEFAULT_FRACTION")), Config::getString("WINDOW_TITLE"));

	window.setFramerateLimit(60);

	window.setVerticalSyncEnabled(true);

	bool fullscreen = false;

	sf::Clock clock;

	DVD::Logo logo{window};

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

				logo.reset_pos();

				logo.scale_logo();

			} else if (event.type == sf::Event::KeyPressed) {
				if (event.key.code == sf::Keyboard::F) {
					if (!fullscreen) {

						window.create(sf::VideoMode::getFullscreenModes()[0], Config::getString("WINDOW_TITLE"), sf::Style::Fullscreen);

						window.setFramerateLimit(60);

						window.setVerticalSyncEnabled(true);

						fullscreen = true;

					} else {

						auto width = sf::VideoMode::getDesktopMode().width;

						window.create(sf::VideoMode(width / Config::getFloat("WINDOW_DEFAULT_FRACTION"), width / Config::getFloat("WINDOW_DEFAULT_FRACTION")), Config::getString("WINDOW_TITLE"));

						window.setFramerateLimit(60);

						window.setVerticalSyncEnabled(true);

						fullscreen = false;

					}

					logo.reset_pos();

				} else if (event.key.code == sf::Keyboard::Escape) {
					window.close();
				} else if (event.key.code == sf::Keyboard::Up) {
					logo.speed++;
				} else if (event.key.code == sf::Keyboard::Down) {
					logo.speed--;
				} else if (event.key.code == sf::Keyboard::Left) {
					
					logo.smaller();

					logo.reset_pos();

					logo.scale_logo();

				} else if (event.key.code == sf::Keyboard::Right) {
					
					logo.larger();

					logo.reset_pos();

					logo.scale_logo();

				}
			}
        }

        window.clear();

		// Only move the logo every LOGO_MILISECOND_TICK miliseconds
		if (clock.getElapsedTime().asMilliseconds() >= Config::getInt("MILISECOND_TICK")) {

			logo.tick();

			clock.restart();
		
		}

		window.draw(logo);

        window.display();

    }

	std::cout << "Farewell" << std::endl;

	return 0;
 
}