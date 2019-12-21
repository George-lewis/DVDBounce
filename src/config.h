#ifndef CONFIG_H_GUARD
#define CONFIG_H_GUARD

#define CONFIG_FILE "config.conf"

#include <fstream>
#include <unordered_map>

#include <cxxopts.hpp>

namespace DVD {

    class Config {

        static std::string config_file, arg0;

        static std::unordered_map<std::string, std::string> _default, read;

        public:

            // Windows and Unix use different path separators
            // This is to handle that
            #if defined(WIN32) || defined(_WIN32)
            static const char PATHSEP = '\\';
            #else
            static const char PATHSEP = '/';
            #endif

            static bool parseCommandLine(int argc, char** argv);

            static void readConfig();

            static std::string getString(const std::string& key);
            static int getInt(const std::string& key);
            static float getFloat(const std::string& key);
            static bool getBool(const std::string& key);

            static void setArg0(char* arg0);

            static std::string getRelative(const std::string& path);

    };

}

#endif // CONFIG_H_GUARD