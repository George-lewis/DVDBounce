#include <iostream>
#include <vector>
#include <algorithm>
#include <thread>
#include <string>
#include <fstream>

#include <cpr/cpr.h>
#include <nlohmann/json.hpp>

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

#include "test.h"

template <typename T>
std::ostream& operator<< (std::ostream& out, const std::vector<T>& v) {
  if ( !v.empty() ) {
    out << '[';
    std::copy (v.begin(), v.end(), std::ostream_iterator<T>(out, ", "));
    out << "\b\b]";
  }
  return out;
}

int main(int argc, char** argv) {

	std::cout << "Version: " << Test_VERSION_MAJOR << "." << Test_VERSION_MINOR << '\n';

	auto r = cpr::Get(cpr::Url{"https://api.github.com/repos/whoshuu/cpr/contributors"}, cpr::VerifySsl{false});

	std::cout << "URL: " << r.url << '\n';
    std::cout << "Status code: " << r.status_code << '\n';
    std::cout << "Content type: " << r.header["content-type"] << '\n';

	auto json = nlohmann::json::parse(r.text);

	std::vector<std::string> contributors{};

	std::for_each(json.begin(), json.end(),
		[&contributors](const auto &j){ contributors.push_back(j["login"]); });

	std::cout << "CPR Contributors: " << contributors << std::endl;

	sf::Image img;

	img.loadFromFile("image.png");

	sf::Texture tex;

	tex.loadFromImage(img);

	sf::Sprite spr{tex};

	std::mutex mut;

	// std::thread t{[&img, &mut](){

	// 	while (1) {

	// 		std::string input;

	// 		std::getline(std::cin, input);

	// 		std::cout << "Read input" << std::endl;

	// 		if (input.substr(0, 4) == "http") {

	// 			auto r = cpr::Get(cpr::Url(input), cpr::VerifySsl(false));

	// 			if (r.status_code == 200) {

	// 				std::cout << r.text << '\n';

	// 				std::ofstream file;

	// 				file.open("image.png");

	// 				file << r.text;

	// 				file.close();

	// 				//tex.loadFromMemory(&r.text, r.text.size());

	// 				mut.lock();

	// 				img.loadFromFile("image.png");

	// 				mut.unlock();

	// 			} else {
	// 				std::cerr << "Erro loading image, status code: " << r.status_code << std::endl;
	// 			}

	// 		}

	// 	}

	// }};

	sf::RenderWindow window(sf::VideoMode(1000, 1000), "SFML works!");

	sf::Vector2f d{-3, -5}, pos {0,0};

	sf::Clock clock;

	int count = 0;

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();
		if (mut.try_lock()) {
			// if (img.getSize() != sf::Vector2u{0,0}) {
			// 	tex.loadFromImage(img);
			// 	std::cout << "Load tex." << std::endl;
			// 	spr.setTexture(tex);
			// }

			if (clock.getElapsedTime().asMilliseconds() >= 50) {
				pos.x += d.x;
				pos.y += d.y;

				spr.setOrigin(pos);

			if (spr.getGlobalBounds().left + spr.getGlobalBounds().width >= 1000) {

				d.x = d.x * -1;

			}

			if (spr.getGlobalBounds().top + spr.getGlobalBounds().height >= 1000) {

				d.y = d.y * -1;

			}

			if (spr.getGlobalBounds().left <= 0) {

				d.x = d.x * -1;

			}

			if (spr.getGlobalBounds().top <= 0) {

				d.y = d.y * -1;

			}

				clock.restart();
			}

			

        	window.draw(spr);
			mut.unlock();
		}
        window.display();
    }

	return 0;
 
}