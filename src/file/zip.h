#ifndef ZIP_H
#define ZIP_H

#include <iostream>
#include <string>
#include <filesystem>
#include <zip.h>

#include "file_utils.h"

extern bool IsZipFile(const std::string& file_path);
extern zip_t* CreateZipArchive(const std::string& zip_path);
extern bool AddFileToZip(zip_t* archive, const std::string& file_path, const std::string& relative_path);
extern bool AddDirectoryToZip(zip_t* archive, const std::string& source_path);
extern bool CompressToZip(const std::string& source_path, const std::string& zip_path);

#endif /* ZIP_H */