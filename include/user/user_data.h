#ifndef USER_DATA_H
#define USER_DATA_H

#include <string>
#include <json.hpp>

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

void to_json(nlohmann::json& j, const UserData& u);
void from_json(const nlohmann::json& j, UserData& u);

bool SaveUserData(const UserData& data, const std::string& path);
bool LoadUserData(UserData& data, const std::string& path);

bool ResetToDefault(const bool reset_name = false, const bool reset_foto = false, const bool reset_id = false);

bool IsUserNameValid(const std::string& name);
bool IsUserFotoValid(const std::string& foto);
bool IsIdValid(const std::string& id);
bool IsValidUTF8(const std::string& str);
bool IsAllDigits(const std::string& str);

#endif /* USER_DATA_H */
