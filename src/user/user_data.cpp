/**
 * @file user_data.cpp
 * @brief Handles user data operations.
 *
 * This file manages user-related data locally before it is sent to the server.
 * It includes functions for reading, updating, and maintaining user information.
 */


#include <string>
#include <filesystem>
#include <vector>

#include "user_data.h"
#include "../file/fcrud.h"

#ifdef _WIN32
    #define USER_DATA_FILE "user\\udata\\user_data.txt"
#else
    #define USER_DATA_FILE "user/udata/user_data.txt"
#endif

bool ResetToDefault(const bool reset_name, const bool reset_foto)
{
    if (!reset_name && !reset_foto) {
        return true;
    }
    
    const std::string default_name = "user_name";
    #ifdef _WIN32
        const std::string default_foto = "user\\udata\\not_foto.jpg";
    #else
        const std::string default_foto = "user/udata/not_foto.jpg";
    #endif

    /* Reset values */
    std::vector current_user_data = ReadFileAsArray(USER_DATA_FILE);

    if (reset_name && reset_foto) {
        std::string save_as = default_name + "\n" + default_foto + "\n" + current_user_data[2] + "\n";
        return WriteToFile(USER_DATA_FILE, default_name + default_foto);
    }

    /* - Reset name or photo to default */
    if (reset_name) {
        std::string save_as = default_name + "\n" + current_user_data[1] + "\n" + current_user_data[2] + "\n";
        return WriteToFile(USER_DATA_FILE, save_as);
    } 
    else {
        std::string save_as = current_user_data[0] + "\n" + default_foto + "\n" + current_user_data[2] + "\n";
        return WriteToFile(USER_DATA_FILE, save_as);
    }
}

bool isAllDigits(const std::string& str)
{
    if (str.empty())
        return false;
    for (size_t i = 0; i < str.size(); ++i) {
        if (str[i] < '0' || str[i] > '9') {
            return false;
        }
    }

    return true;
}

bool isValidUTF8(const std::string& str) 
{
    int i = 0;
    while (i < str.size()) {
        unsigned char byte = str[i];

        if (byte <= 0x7F)
            i++;
        else if ((byte & 0xE0) == 0xC0) {
            if (i + 1 >= str.size() || (str[i + 1] & 0xC0) != 0x80) 
                return false;
            i += 2;
        }
        else if ((byte & 0xF0) == 0xE0) {
            if (i + 2 >= str.size() || (str[i + 1] & 0xC0) != 0x80 || (str[i + 2] & 0xC0) != 0x80) 
                return false;
            i += 3;
        } 
        else if ((byte & 0xF8) == 0xF0) {
            if (i + 3 >= str.size() || (str[i + 1] & 0xC0) != 0x80 || (str[i + 2] & 0xC0) != 0x80 || (str[i + 3] & 0xC0) != 0x80) 
                return false;
            i += 4;
        } 
        else {
            return false;
        }
    }
    return true;
}

bool IsUserNameValid(const std::string& name)
{
    const int max_size = 50;

    if (name.empty())
        return false;
    if (name.size() <= 0 || name.size() > max_size)
        return false;
    if (!isValidUTF8(name))
        return false;

    return true;
}

bool IsUserFotoValid(const std::string& foto)
{
    const int max_size = 100;

    if (foto.empty())
        return false;
    if (foto.size() <= 0 || foto.size() > max_size)
        return false;
    if (!std::filesystem::exists(foto))
        return false;
    
    return true;
}

bool IsIdValid(const std::string& id)
{
    const int id_size = 10;

    if (id.empty())
        return false;
    if (id.size() != id_size)
        return false;
    if (!isAllDigits(id))
        return false;

    return true;
}
