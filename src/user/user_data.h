#ifndef USER_PROFILE_H
#define USER_PROFILE_H

#include <iostream>
#include <string>
#include <filesystem>
#include <vector>

#include "../file/file_utils.h"

extern bool IsUserNameValid(const std::string& name);
extern bool IsUserFotoValid(const std::string& foto);
extern bool isValidUTF8(const std::string& str);
extern void ResetToDefault(const bool reset_name = false, const bool reset_foto = false);

#endif /* USER_PROFILE_H */
