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

#include <user/user_data.h>
#include <project/config.h>
#include <file/fcrud.h>

bool ResetToDefault(const bool reset_name, const bool reset_foto, const bool reset_id)
{
    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Reset data." << std::endl;

    if (!reset_name && !reset_foto && !reset_id) {
        return true;
    }
    
    /* Default values */
    const int number_data = 3;
    const std::string default_name = "user_name";
    const std::string default_foto = "data/not_foto.jpg";
    const std::string default_id = "0000000000";

    /* Read current user data */
    std::vector<std::string> current_user_data = ReadFileAsArray(USER_DATA_FILE);
    std::string save_as;

    /* Reset all if file is empty or damaged */
    if (current_user_data.size() < number_data) {
        std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): User data file is empty or invalid. Resetting to default values." << std::endl;

        save_as = default_name + "\n" + default_foto + "\n" + default_id + "\n";
        return WriteToFile(USER_DATA_FILE, save_as);
    }

    /* Copy current values */
    std::string name = current_user_data[0];
    std::string foto = current_user_data[1];
    std::string id = current_user_data[2];

    /* Reset required fields */
    if (reset_name) name = default_name;
    if (reset_foto) foto = default_foto;
    if (reset_id)   id   = default_id;

    /* Prepare data for saving */
    save_as = name + "\n" + foto + "\n" + id + "\n";

    /* Save updated values */
    return WriteToFile(USER_DATA_FILE, save_as);
}

/* Data check */
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
