/**
 * @file user_data.cpp
 * @brief Handles user data operations.
 *
 * This file manages user-related data locally before it is sent to the server.
 * It includes functions for reading, updating, and maintaining user information.
 */

#include <string>
#include <filesystem>
#include <fstream>
#include <json.hpp>

#include <util/log.h>
#include <user/user_data.h>
#include <project/config.h>
#include <file/fcrud.h>

void to_json(nlohmann::json &j, const UserData &u)
{
    j = nlohmann::json{
        {"id", u.id},
        {"name", u.name},
        {"photo_path", u.photo_path}};
}

void from_json(const nlohmann::json &j, UserData &u)
{
    j.at("id").get_to(u.id);
    j.at("name").get_to(u.name);
    j.at("photo_path").get_to(u.photo_path);
}

bool SaveUserData(const UserData &user, const std::string &file_path)
{
    try
    {
        nlohmann::json j = user;
        std::ofstream file(file_path);

        if (!file.is_open())
        {
            LOG_ERR("Failed to open file for saving: " << file_path);
            return false;
        }

        file << j.dump(4);
        LOG_OUT("User data saved to " << file_path);
        return true;
    }
    catch (const std::exception &e)
    {
        LOG_ERR("Exception while saving user data: " << e.what());
        return false;
    }
}

UserData LoadUserData(const std::string &file_path)
{
    UserData user{};

    try
    {
        std::ifstream file(file_path);
        if (!file.is_open())
        {
            throw std::runtime_error("Failed to open file: " + file_path);
            /* File missing or inaccessible */
        }

        nlohmann::json j;
        file >> j;

        if (!j.is_object())
        {
            throw std::runtime_error("Invalid JSON in file: " + file_path);
            /* File content is not a JSON object */
        }

        user = j.get<UserData>();
        /* Deserialize JSON to UserData */
        LOG_OUT("User data loaded from " << file_path);
    }
    catch (const std::exception &e)
    {
        LOG_ERR("Exception while loading user data: " << e.what());
    }

    return user;
}

bool ResetToDefault(const std::string& file_path, const bool reset_name, const bool reset_foto, const bool reset_id)
{
    LOG_OUT("Reset data.");

    if (!reset_name && !reset_foto && !reset_id)
    {
        return true;
        /* Nothing to reset */
    }

    /* Default values */
    const std::string default_name = "user_name";
    const std::string default_foto = "data/not_foto.jpg";
    const std::string default_id = "0000000000";

    UserData user = LoadUserData(USER_DATA_FILE);
    if (user.empty())
    {
        LOG_ERR("User data file is empty or invalid. Resetting to default values.");
        /* File is empty or invalid → set all fields to default */
        user = {default_id, default_name, default_foto};
    }
    else
    {
        /* File exists → selectively reset fields based on flags */
        if (reset_name)
            user.name = default_name;
        if (reset_foto)
            user.photo_path = default_foto;
        if (reset_id)
            user.id = default_id;
    };

    return SaveUserData(user, file_path);
    /* Save updated user and return success/failure */
}

/* Data check */
bool IsUserNameValid(const std::string &name)
{
    const int max_size = 50;

    if (name.empty())
    {
        LOG_ERR("Name is empty.");
        return false;
    }
    if (name.size() > max_size)
    {
        LOG_ERR("Name exceeds max size (" << max_size << ")");
        return false;
    }
    if (!IsValidUTF8(name))
    {
        LOG_ERR("Name is not valid UTF-8: " << name);
        return false;
    }

    return true;
}

bool IsUserFotoValid(const std::string &foto)
{
    const int max_size = 100;

    if (foto.empty())
    {
        LOG_ERR("Photo path is empty.");
        return false;
    }
    if (foto.size() > max_size)
    {
        LOG_ERR("Photo path exceeds max size (" << max_size << ")");
        return false;
    }
    if (!std::filesystem::exists(foto))
    {
        LOG_ERR("Photo file does not exist: " << foto);
        return false;
    }

    return true;
}

bool IsIdValid(const std::string &id)
{
    const int id_size = 10;

    if (id.empty())
    {
        LOG_ERR("ID is empty.");
        return false;
    }
    if (id.size() != id_size)
    {
        LOG_ERR("ID length is not " << id_size << ": " << id);
        return false;
    }
    if (!IsAllDigits(id))
    {
        LOG_ERR("ID contains non-digit characters: " << id);
        return false;
    }

    return true;
}

bool IsValidUTF8(const std::string &str)
{
    int i = 0;
    while (i < str.size())
    {
        unsigned char byte = str[i];

        if (byte <= 0x7F)
            i++; /* ASCII byte, single-byte character */
        else if ((byte & 0xE0) == 0xC0)
        {
            if (i + 1 >= str.size() || (str[i + 1] & 0xC0) != 0x80)
                return false; /* 2-byte sequence invalid continuation */
            i += 2;
        }
        else if ((byte & 0xF0) == 0xE0)
        {
            if (i + 2 >= str.size() || (str[i + 1] & 0xC0) != 0x80 || (str[i + 2] & 0xC0) != 0x80)
                return false; /* 3-byte sequence invalid continuation */
            i += 3;
        }
        else if ((byte & 0xF8) == 0xF0)
        {
            if (i + 3 >= str.size() || (str[i + 1] & 0xC0) != 0x80 || (str[i + 2] & 0xC0) != 0x80 || (str[i + 3] & 0xC0) != 0x80)
                return false; /* 4-byte sequence invalid continuation */
            i += 4;
        }
        else
        {
            return false; /* Invalid first byte for UTF-8 */
        }
    }
    return true; /* All characters valid UTF-8 */
}

bool IsAllDigits(const std::string &str)
{
    if (str.empty())
        return false;
    for (size_t i = 0; i < str.size(); ++i)
    {
        if (str[i] < '0' || str[i] > '9')
        {
            return false; /* Found non-digit character */
        }
    }

    return true;
}
