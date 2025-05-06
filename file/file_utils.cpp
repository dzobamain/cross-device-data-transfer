#include <iostream>
#include <cstdio>
#include <cerrno>
#include <string.h>
#include <filesystem>
#include <fstream>

#include "file_utils.h"

bool MoveFile(const std::string& from_path, const std::string& to_path)
{
    try
    {
        std::filesystem::rename(from_path, to_path);
        return true;
    }
    catch (const std::filesystem::filesystem_error& e)
    {
        std::cerr << "Error MoveFile: " << e.what() << std::endl;
        return false;
    }
}

bool CopyFile(const std::string& from_path, const std::string& to_path)
{
    try
    {
        std::filesystem::copy_file(from_path, to_path);
        return true;
    }
    catch (const std::filesystem::filesystem_error& e)
    {
        std::cerr << "Error CopyFile: " << e.what() << std::endl;
        return false;
    }
}

bool RemoveFile(const std::string& file_path)
{
    try
    {
        std::filesystem::remove(file_path);
        return true;
    }
    catch(const std::filesystem::filesystem_error& e)
    {
        std::cerr << "Error RemoveFile: " << e.what() << std::endl;
        return false;
    }
}

bool WriteToFile(const std::string& file_path, const std::string& text)
{
    std::ofstream file(file_path);

    if (!file)
    {
        std::cerr << "Error WriteToFile: Cannot open file " << file_path << std::endl;
        return false;
    }

    file << text;
    file.close();

    return true;
}

std::vector<std::string> ReadFileAsArray(const std::string& file_path)
{
    std::vector<std::string> lines;
    std::ifstream file(file_path);

    if (!file)
    {
        std::cerr << "Error ReadFileAsArray: Cannot open file " << file_path << std::endl;
        return lines;
    }

    std::string line;
    while (std::getline(file, line))
    {
        lines.push_back(line);
    }

    file.close();
    return lines;
}

std::string GetFileName(const std::string& full_path)
{
    return std::filesystem::path(full_path).filename().string();
}

std::string GetDirectory(const std::string& full_path)
{
    return std::filesystem::path(full_path).parent_path().filename().string();
}
