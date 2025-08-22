#ifndef LOG_H
#define LOG_H

#define DEBUG_PATH "var/debug.log"
#define LOG_OUT(msg) std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): " << msg << std::endl;
#define LOG_ERR(msg) std::cerr << "[Error]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): " << msg << std::endl;
#define LOG_FATAL(msg) do { std::cerr << "[FATAL]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): " << msg << std::endl; std::exit(EXIT_FAILURE); } while(0)

#endif // LOG_H