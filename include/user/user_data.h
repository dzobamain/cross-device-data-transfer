#ifndef USER_DATA_H
#define USER_DATA_H

#include <string>
#include <filesystem>
#include <vector>

#include <file/fcrud.h>

extern bool ResetToDefault(const bool reset_name = false, const bool reset_foto = false, const bool reset_id = false);

extern bool IsUserNameValid(const std::string& name);
extern bool IsUserFotoValid(const std::string& foto);
extern bool IsIdValid(const std::string& id);

extern bool isValidUTF8(const std::string& str);
extern bool isAllDigits(const std::string& str);

#endif /* USER_DATA_H */
