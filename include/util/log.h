#ifndef LOG_H
#define LOG_H

#include <iostream>
/*
 * Note:
 * If you include <util/log.h>, 
 * you do NOT need to include <iostream> separately in your .cpp files,
 * as it is already included here for std::cout / std::cerr.
 */

#define DEBUG_PATH "var/debug.log"

#define LOG_OUT(msg) \
    std::cout << "[" << __FILE__ << "] " \
              << __FUNCTION__ << "(): " << msg << std::endl;

#define LOG_WARN(msg) \
    std::cout << "[WARNING]" \
              << "[" << __FILE__ << ":" << __LINE__ << "] " \
              << __FUNCTION__ << "(): " << msg << std::endl;

#define LOG_ERR(msg) \
    std::cerr << "[ERROR]" \
              << "[" << __FILE__ << ":" << __LINE__ << "] " \
              << __FUNCTION__ << "(): " << msg << std::endl;

#define LOG_FATAL(msg) \
    do { \
        std::cerr << "[FATAL]" \
                  << "[" << __FILE__ << ":" << __LINE__ << "] " \
                  << __FUNCTION__ << "(): " << msg << std::endl; \
        std::exit(EXIT_FAILURE); \
    } while(0)

#endif // LOG_H
