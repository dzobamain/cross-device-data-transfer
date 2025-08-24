/**
 * @file fcrud.cpp
 * @brief Implements basic file CRUD operations.
 *
 * This file provides functionality for basic Create, Read, Update, and Delete (CRUD)
 * operations on local files. It also includes helper utilities for interacting
 * with the file system, such as checking for file existence or creating new files.
 *
 * Usage:
 * Functions are designed to work with standard C-style file paths and textual content.
 * Suitable for managing local plain text files within the application.
*/

#include <string>
#include <filesystem>
#include <sys/stat.h>
#include <fstream>
#include <util/log.h>

#include <file/fcrud.h>

bool MoveFile(const std::string& from_path, const std::string& to_path)
{
    LOG_OUT("Moving file from " << from_path << " to " << to_path);

    try 
    {
        std::filesystem::rename(from_path, to_path);
        return true;
    }
    catch (const std::filesystem::filesystem_error& e) 
    {
        LOG_ERR(e.what());
        return false;
    }
}

bool CopyFile(const std::string& from_path, const std::string& to_path)
{
    LOG_OUT("Copying file from " << from_path << " to " << to_path);

    try 
    {
        std::filesystem::copy_file(from_path, to_path);
        return true;
    }
    catch (const std::filesystem::filesystem_error& e) 
    {
        LOG_ERR(e.what());
        return false;
    }
}

bool RemoveFile(const std::string& file_path)
{
   LOG_OUT("Removing file " << file_path);

    try 
    {
        std::filesystem::remove(file_path);
        return true;
    }
    catch(const std::filesystem::filesystem_error& e) 
    {
        LOG_ERR(e.what());
        return false;
    }
}

bool WriteToFile(const std::string& file_path, const std::string& text)
{
    namespace fs = std::filesystem;

    LOG_OUT("Writing to file " << file_path);

    fs::path path(file_path);

    if (!fs::exists(path.parent_path())) 
    {
        if (!fs::create_directories(path.parent_path())) 
        {
            LOG_ERR("Cannot create directories for " << file_path);
            return false;
        }
    }

    std::ofstream file(file_path);

    if (!file) 
    {
        LOG_ERR("Cannot open file " << file_path);
        return false;
    }

    file << text;
    return true;
}

std::vector<std::string> ReadFileAsArray(const std::string& file_path)
{
    LOG_OUT("Reading file " << file_path);

    std::vector<std::string> lines;
    std::ifstream file(file_path);

    if (!file) {
        LOG_ERR("Cannot open file " << file_path);
        return lines;
    }

    /* Splitting into an array by lines, preserving words separately. */
    std::string line;
    while (std::getline(file, line)) {
        lines.push_back(line);
    }

    file.close();
    return lines;
}

std::string GetFileName(const std::string& full_path)
{
    LOG_OUT("Getting filename from path");
    return std::filesystem::path(full_path).filename().string();
}

std::string GetDirectory(const std::string& full_path)
{
    LOG_OUT("Getting directory from path " << full_path);
    return std::filesystem::path(full_path).parent_path().filename().string();
}

bool FileExists(const std::string& file_path) 
{
    LOG_OUT("Check file exists " << file_path);
    struct stat buffer;
    return (stat(file_path.c_str(), &buffer) == 0);
}
