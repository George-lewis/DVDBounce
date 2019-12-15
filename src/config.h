#ifndef CONFIG_H_GUARD
#define CONFIG_H_GUARD

#define CONFIG_FILE "config.conf"

#include <fstream>
#include <unordered_map>

namespace DVD {

    class Config {

        static std::unordered_map<std::string, std::string> _default, read;

        public:

            static void readConfig();

            static std::string getString(std::string key);
            static int getInt(std::string key);
            static float getFloat(std::string key);

    };

}

#endif // CONFIG_H_GUARD