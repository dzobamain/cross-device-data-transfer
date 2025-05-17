/**
 * @file user_data.cpp
 * @brief Handles user data operations.
 *
 * This file manages user-related data locally before it is sent to the server.
 * It includes functions for reading, updating, and maintaining user information.
 */


#include <iostream>
#include <string>
#include <filesystem>
#include <vector>

#include "../file/fcrud.h"

#ifdef _WIN32
    #define USER_DATA_FILE "user\\user_data.txt"
#else
    #define USER_DATA_FILE "user/user_data.txt"
#endif

void ResetToDefault(const bool reset_name = false, const bool reset_foto = false)
{
    if (!reset_name && !reset_foto) {
        return;
    }
    
    const std::string default_name = "user_name\n";
    #ifdef _WIN32
        const std::string default_foto = "user\\not_foto.jpg";
    #else
        const std::string default_foto = "user/not_foto.jpg";
    #endif

    if (reset_name && reset_foto) {
        WriteToFile(USER_DATA_FILE, default_name + default_foto);
        return;
    } 

    std::vector current_user_data = ReadFileAsArray(USER_DATA_FILE);

    if (reset_name) {
        WriteToFile(USER_DATA_FILE, default_name + "\n" + current_user_data[1] + "\n");
    } 
    else {
        WriteToFile(USER_DATA_FILE, current_user_data[0] + "\n" + default_foto + "\n");
    }
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
    if (name.empty())
        return false;
    if (name.size() <= 0 || name.size() > 50)
        return false;
    if (!isValidUTF8(name))
        return false;

    return true;
}

bool IsUserFotoValid(const std::string& foto)
{
    if (foto.empty())
        return false;
    if (!std::filesystem::exists(foto))
        return false;
    if (foto.size() <= 0 || foto.size() > 100)
        return false;
    
    return true;
}
