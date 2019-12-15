#include <sstream>
#include <iostream>

#include "config.h"

using DVD::Config;

std::unordered_map<std::string, std::string> Config::_default = {

    { "#1", "This is the % width of the window" },
    { "#2", "That the logo should take up" },
    { "LOGO_WIDTH_PERCENTAGE", "0.3" },
    { "LOGO_WIDTH_PERCENTAGE_UPPER_BOUND", "0.8" },
    { "LOGO_WIDTH_PERCENTAGE_LOWER_BOUND", "0.1" },

    { "#3", "Number of miliseconds between each movement" },
    { "MILISECOND_TICK", "5" },

    { "#4", "Multiplicate of the direction vector" },
    { "SPEED", "3" },

    { "#5", "Title of the window", },
    { "TITLE", "DVD Bouncer Super Deluxe" },

    { "#6", "The default window size as a fraction of the screen size" },
    { "#7", "EX: 4 -> 1/4 the width of the screen" },
    { "WINDOW_DEFAULT_FRACTION", "4" }


}, Config::read{};

void Config::readConfig() {

    std::ifstream ifile{CONFIG_FILE};

    if (ifile.good()) {

        std::string line;

        while (std::getline(ifile, line)) {

            if (line[0] == '#' || line.empty()) {
                continue;
            }

            std::string key = line.substr(0, line.find_first_of(':'));

            std::string value = line.substr(line.find_first_of(':') + 1);

            Config::read[key] = value;

        }

    }

    ifile.close();

    bool changed = false;

        for (const auto kv : _default) {

            // Not present
            if (Config::read.count(kv.first) == 0) {

                if (kv.first[0] == '#') {

                    Config::read[kv.first] = kv.second;

                    continue;

                }

                std::cout << "Missing value for \"" << kv.first << "\", updating with default.." << std::endl;

                Config::read[kv.first] = kv.second;

                changed = true;

            }

        }

        if (changed) {

            std::cout << "You are missing the config file - a default will be written" << std::endl;

            std::ofstream ofile{CONFIG_FILE};

            for (const auto kv : Config::read) {

                if (kv.first[0] == '#') {
                    ofile << "# " << kv.second << std::endl;
                } else {

                    ofile << kv.first << ": " << kv.second << std::endl;

                }

            }

            ofile.close();

        }

}

std::string Config::getString(std::string key) {

    return Config::read[key];

}

int Config::getInt(std::string key) {

    return std::stoi(Config::read[key]);

}

float Config::getFloat(std::string key) {

    return std::stof(Config::read[key]);

}