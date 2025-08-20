#ifndef CONFIG_H
#define CONFIG_H

#include <string>

namespace AppConfig
{
    const std::string VERSION = "0.0.0";
    const std::string APP_NAME = "Cross-Device-Data-Transfer";
    const std::string AUTHOR = "Dzobamain";
    const std::string PROJECT_GITHUB_URL = "https://github.com/dzobamain/cross-device-data-transfer";

    const std::string DEBUG_PATH = "var/debug.log";

#ifdef _WIN32
    #define USER_DATA_FILE "data\\user.txt"
#else
    #define USER_DATA_FILE "data/user.txt"
#endif

}

#endif // CONFIG_H
