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

#include <iostream>
#include <cerrno>
#include <string>
#include <filesystem>
#include <fstream>

#include <file/fcrud.h>

bool MoveFile(const std::string& from_path, const std::string& to_path)
{
    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Moving file from " << from_path << " to " << to_path << std::endl;

    try {
        std::filesystem::rename(from_path, to_path);
        return true;
    }
    catch (const std::filesystem::filesystem_error& e) {
        std::cerr << "[Error]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): " << e.what() << std::endl;
        return false;
    }
}

bool CopyFile(const std::string& from_path, const std::string& to_path)
{
    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Copying file from " << from_path << " to " << to_path << std::endl;

    try {
        std::filesystem::copy_file(from_path, to_path);
        return true;
    }
    catch (const std::filesystem::filesystem_error& e) {
        std::cerr << "[Error]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): " << e.what() << std::endl;
        return false;
    }
}

bool RemoveFile(const std::string& file_path)
{
    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Removing file " << file_path << std::endl;

    try {
        std::filesystem::remove(file_path);
        return true;
    }
    catch(const std::filesystem::filesystem_error& e) {
        std::cerr << "[Error]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): " << e.what() << std::endl;
        return false;
    }
}

bool WriteToFile(const std::string& file_path, const std::string& text)
{
    namespace fs = std::filesystem;

    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Writing to file " << file_path << std::endl;

    fs::path path(file_path);

    if (!fs::exists(path.parent_path())) {
        if (!fs::create_directories(path.parent_path())) {
            std::cerr << "[Error]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Cannot create directories for " << file_path << std::endl;
            return false;
        }
    }

    std::ofstream file(file_path);

    if (!file) {
        std::cerr << "[Error]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Cannot open file " << file_path << std::endl;
        return false;
    }

    file << text;
    return true;
}

std::vector<std::string> ReadFileAsArray(const std::string& file_path)
{
    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Reading file " << file_path << std::endl;

    std::vector<std::string> lines;
    std::ifstream file(file_path);

    if (!file) {
        std::cerr << "[Error]" << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Cannot open file " << file_path << std::endl;
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
    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Getting filename from path " << full_path << std::endl;
    return std::filesystem::path(full_path).filename().string();
}

std::string GetDirectory(const std::string& full_path)
{
    std::cout << "[" << __FILE__ << "] " << __FUNCTION__ << "(): Getting directory from path " << full_path << std::endl;
    return std::filesystem::path(full_path).parent_path().filename().string();
}

