#ifndef FCRUD_H
#define FCRUD_H

#include <iostream>
#include <cerrno>
#include <string>
#include <filesystem>
#include <fstream>

extern bool MoveFile(const std::string& from_path, const std::string& to_path);
extern bool CopyFile(const std::string& from_path, const std::string& to_path);
extern bool RemoveFile(const std::string& file_path);
extern bool WriteToFile(const std::string& file_path, const std::string& text);
extern std::vector<std::string> ReadFileAsArray(const std::string& file_path);
extern std::string GetFileName(const std::string& full_path);
extern std::string GetDirectory(const std::string& full_path);
extern bool FileExists(const std::string& path);

#endif /* FCRUD_H */
