#ifndef CONFIG_H_GUARD
#define CONFIG_H_GUARD

#define CONFIG_FILE "config.conf"

#include <fstream>
#include <unordered_map>

#include <cxxopts.hpp>

namespace DVD {

    class Config {

        static std::string config_file;

        static std::unordered_map<std::string, std::string> _default, read;

        public:

            static void parseCommandLine(int argc, char** argv);

            static void readConfig();

            static std::string getString(const std::string& key);
            static int getInt(const std::string& key);
            static float getFloat(const std::string& key);
            static bool getBool(const std::string& key);

    };

}

#endif // CONFIG_H_GUARD