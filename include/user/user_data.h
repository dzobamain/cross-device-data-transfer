#ifndef USER_DATA_H
#define USER_DATA_H

#include <string>
#include <filesystem>
#include <vector>
#include <json.hpp>

#include <file/fcrud.h>

#ifdef _WIN32
    #define USER_DATA_FILE "data\\user.json"
#else
    #define USER_DATA_FILE "data/user.json"
#endif

struct UserData
{
    std::string id;
    std::string name;
    std::string photo_path;
};

extern void to_json(nlohmann::json& j, const UserData& u);
extern void from_json(const nlohmann::json& j, UserData& u);

extern bool SaveUserData(const UserData& data, const std::string& path);
extern bool LoadUserData(UserData& data, const std::string& path);

extern bool ResetToDefault(const bool reset_name = false, const bool reset_foto = false, const bool reset_id = false);

extern bool IsUserNameValid(const std::string& name);
extern bool IsUserFotoValid(const std::string& foto);
extern bool IsIdValid(const std::string& id);

extern bool isValidUTF8(const std::string& str);
extern bool isAllDigits(const std::string& str);

#endif /* USER_DATA_H */
