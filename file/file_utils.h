#ifndef FILE_UTILS_H
#define FILE_UTILS_H

#include <iostream>
#include <cstdio>
#include <cerrno>
#include <string.h>
#include <filesystem>
#include <fstream>

extern bool MoveFile(const std::string& from_path, const std::string& to_path);
extern bool CopyFile(const std::string& from_path, const std::string& to_path);
extern bool RemoveFile(const std::string& file_path);
extern bool WriteToFile(const std::string& file_path, const std::string& text);
extern std::vector<std::string> ReadFileAsArray(const std::string& file_path);
extern std::string GetFileName(const std::string& full_path);
extern std::string GetDirectory(const std::string& full_path);

#endif /* FILE_UTILS_H */