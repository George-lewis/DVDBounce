#include <iostream>

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

int main(int argc, char** argv) {

	std::cout << "Welcome to DVD Bounce, enjoy the retro" << std::endl;

	sf::Image img;

	img.loadFromFile("image.png");

	sf::Texture tex;

	tex.loadFromImage(img);

	sf::Sprite spr{tex};

	sf::RenderWindow window(sf::VideoMode(1000, 1000), "SFML works!");

	sf::Vector2f d{-3, -5}, pos {0,0};

	sf::Clock clock;

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();

		if (clock.getElapsedTime().asMilliseconds() >= 50) {

			pos.x += d.x;
			pos.y += d.y;

			spr.setOrigin(pos);

			bool bounce = false;

			if (spr.getGlobalBounds().left + spr.getGlobalBounds().width >= 1000) {

				d.x = d.x * -1;

				bounce = true;

			}

			if (spr.getGlobalBounds().top + spr.getGlobalBounds().height >= 1000) {

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

				spr.setColor(sf::Color::Red);

			}

			clock.restart();
		
		}

		

		window.draw(spr);

        window.display();

    }

	return 0;
 
}