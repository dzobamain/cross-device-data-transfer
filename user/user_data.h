#ifndef USER_PROFILE_H
#define USER_PROFILE_H

#include <iostream>
#include <string>
#include <filesystem>

#include "../file/file_utils.h"

extern bool IsUserNameValid(const std::string& name);
extern bool IsUserFotoValid(const std::string& foto);
extern bool isValidUTF8(const std::string& str);

#endif /* USER_PROFILE_H */
