#ifndef FCRUD_H
#define FCRUD_H

#include <vector>
#include <string>

bool MoveFile(const std::string& from_path, const std::string& to_path);
bool CopyFile(const std::string& from_path, const std::string& to_path);
bool RemoveFile(const std::string& file_path);
bool WriteToFile(const std::string& file_path, const std::string& text);
std::vector<std::string> ReadFileAsArray(const std::string& file_path);
std::string GetFileName(const std::string& full_path);
std::string GetDirectory(const std::string& full_path);
bool FileExists(const std::string& path);

#endif /* FCRUD_H */
