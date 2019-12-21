#include <sstream>
#include <iostream>

#include "config.h"

using DVD::Config;

// This represents the default values
// Comments are also added in here with #[num]
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
    { "#7", "EX: 4 -> 1/4 the size of the screen" },
    { "WINDOW_DEFAULT_FRACTION", "4" },

    { "#8", "Start the program in fullscreen -- please use 0 and 1 values" },
    { "FULLSCREEN", "0" },

    { "#9", "Screensaver setting causes the program to enter fullscreen mode immediately and exit on mouse/keyboard input" },
    { "SCREENSAVER", "0" }

}, Config::read{};

std::string Config::config_file = CONFIG_FILE, Config::arg0;

bool Config::parseCommandLine(int argc, char** argv) {

    cxxopts::Options opts {"DVD Bouncer", "A program that simulates the retro DVD screensaver"};

    opts.add_options()
        ("screensaver", "Enables screensaver mode - the program starts fullscreen and exits on mouse/keyboard activity")
        ("fullscreen", "Starts the program in fullscreen")
        ("c,config", "Use a different config file", cxxopts::value(Config::config_file))

        ("t,title", "Set the window's title", cxxopts::value(Config::read["TITLE"]))

        ("tick", "Set the number of miliseconds between logo movements (default 5)", cxxopts::value(Config::read["MILISECOND_TICK"]))
        ("s,speed", "Set the speed of the logo (default 3)", cxxopts::value(Config::read["SPEED"]))

        ("window-fraction", "Set the size of the window as a fraction of the screen size (4 -> 1/4th)", cxxopts::value(Config::read["WINDOW_DEFAULT_FRACTION"]))

        ("logo-width", "Specify the logo's width on startup (0.1 = 10%)", cxxopts::value(Config::read["LOGO_WIDTH_PERCENTAGE"]))
        ("logo-width-max", "Specify the logo's max width in %", cxxopts::value(Config::read["LOGO_WIDTH_PERCENTAGE_UPPER_BOUND"]))
        ("logo-width-min", "Specify the logo's min width in %", cxxopts::value(Config::read["LOGO_WIDTH_PERCENTAGE_LOWER_BOUND"]))
        ;

    try {

        auto result = opts.parse(argc, argv);
    
        // This is for detecting when the user has input an empty string
        // Vs when the library has set the string to empty in the abscence
        // Of user input
        if (!result.count("t")) {

            Config::read.erase("TITLE");

        }

        if (result.count("screensaver")) {

            Config::read["SCREENSAVER"] = "1";

        }

        if (result.count("fullscreen")) {

            Config::read["FULLSCREEN"] = "1";

        }

    } catch (cxxopts::OptionException e) {

        std::cout << opts.help();

        return false;

    }

    return true;

}

// Reads the config into the program
void Config::readConfig() {

    std::ifstream ifile{Config::config_file};

    if (ifile.good()) {

        // File is good to be read

        std::string line;

        while (std::getline(ifile, line)) {

            // Skip comments and empty lines
            if (line[0] == '#' || line.empty()) {
                continue;
            }

            // Format: "key: value"
            std::string key = line.substr(0, line.find_first_of(':'));

            std::string value = line.substr(line.find_first_of(':') + 1);

            // The value could be set by command line switches
            if (Config::read.count(key) == 0 || (Config::read[key].empty() && key != "TITLE")) {

                Config::read[key] = value;

            }

        }

    }

    ifile.close();

    bool changed = false;

    for (const auto kv : _default) {

        // A required value is not present in the
        // Config that was just read
        if (Config::read.count(kv.first) == 0 || (Config::read[kv.first].empty() && kv.first != "TITLE")) {

            // Special case for comments
            if (kv.first[0] == '#') {

                Config::read[kv.first] = kv.second;

                continue;

            }

            std::cout << "Missing value for \"" << kv.first << "\", updating with default.." << std::endl;

            Config::read[kv.first] = kv.second;

            // Notify code below that the file needs to be rewritten
            changed = true;

        }

    }

    // The config file was corrected and needs to be rewritten
    if (changed) {

        std::cout << "You are missing the config file or are missing some values - a default will be written" << std::endl;

        std::ofstream ofile{Config::config_file};

        // Iterate through the patched config
        // Config::read is now the result of merging
        // The defaults into the read-in config
        for (const auto kv : Config::read) {

            // Comments are a special case
            if (kv.first[0] == '#') {
                ofile << "# " << kv.second << std::endl;
            } else {

                ofile << kv.first << ": " << kv.second << std::endl;

            }

        }

        ofile.close();

    }

}

std::string Config::getString(const std::string& key) {

    return Config::read[key];

}

int Config::getInt(const std::string& key) {

    return std::stoi(Config::read[key]);

}

float Config::getFloat(const std::string& key) {

    return std::stof(Config::read[key]);

}

bool Config::getBool(const std::string& key) {

    return Config::read[key] == "1";

}

void Config::setArg0(char* arg0) {

    auto x = std::string(arg0);

    Config::arg0 = x.substr(0, x.find_last_of(Config::PATHSEP));

    Config::config_file = Config::getRelative(Config::config_file);

}

std::string Config::getRelative(const std::string& path) {

    std::string rel = arg0 + Config::PATHSEP + path;

    return rel;

}