#ifndef CONFIG_H
#define CONFIG_H

#include <string>

namespace AppConfig
{
    const std::string VERSION = "0.0.0";
    const std::string APP_NAME = "Cross-Device-Data-Transfer";
    const std::string AUTHOR = "Dzobamain";

    inline std::string GetVersion() 
    {
        return VERSION + "-beta";
    }
}

#endif // CONFIG_H
