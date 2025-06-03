#ifndef USER_DATA_H
#define USER_DATA_H

#include <string>
#include <filesystem>
#include <vector>

#include "../file/fcrud.h"

extern bool IsUserNameValid(const std::string& name);
extern bool isValidUTF8(const std::string& str);
extern bool IsIdValid(const std::string& id);
extern bool IsUserFotoValid(const std::string& foto);
extern bool ResetToDefault(const bool reset_name = false, const bool reset_foto = false);

#endif /* USER_DATA_H */
