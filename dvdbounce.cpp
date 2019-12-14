#include <iostream>
#include <math.h>
#include <stdio.h>
#include <sstream>

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

int main(int argc, char** argv) {

	std::cout << "Welcome to DVD Bounce, enjoy the retro" << std::endl;

	sf::Image imgs[8] = {};

	for (int i = 0; i < 8; i++) {

		std::stringstream filename;

		filename << "resources/dvdlogo-0" << i << ".png";

		std::cout << filename.str() << std::endl;

		imgs[i].loadFromFile(filename.str());

	}

	int counter = 0;

	sf::Texture tex;

	tex.loadFromImage(imgs[counter]);

	sf::Sprite spr{tex};

	spr.setColor(sf::Color::White);

	sf::RenderWindow window(sf::VideoMode(1000, 1000), "DVD Bouncer Super Deluxe");

	sf::Vector2f d{-1, -1}, pos {0,0};

	float magnitude = sqrt(d.x*d.x + d.y*d.y);

	d.x = d.x / magnitude;
	d.y = d.y / magnitude;

	sf::Clock clock;

    while (window.isOpen())
    {
        sf::Event event;

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
			else if (event.type == sf::Event::Resized) {
				
				window.setView(sf::View(sf::FloatRect(0, 0, event.size.width, event.size.height)));

				pos = {0,0};

			}
        }

        window.clear();

		if (clock.getElapsedTime().asMilliseconds() >= 5) {

			pos.x += d.x;
			pos.y += d.y;

			spr.setOrigin(pos);

			bool bounce = false;

			const float w = window.getView().getSize().x, h = window.getView().getSize().y;

			if (spr.getGlobalBounds().left + spr.getGlobalBounds().width >= w) {

				d.x = d.x * -1;

				bounce = true;

			}

			if (spr.getGlobalBounds().top + spr.getGlobalBounds().height >= h) {

				d.y = d.y * -1;

				bounce = true;

			}

			if (spr.getGlobalBounds().left <= 0) {

				d.x = d.x * -1;

				bounce = true;

			}

			if (spr.getGlobalBounds().top <= 0) {

				d.y = d.y * -1;

				bounce = true;

			}

			if (bounce) {

				counter++;

				tex.loadFromImage(imgs[counter % 7]);

			}

			clock.restart();
		
		}

		window.draw(spr);

        window.display();

    }

	return 0;
 
}