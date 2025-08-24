#ifndef ZIP_H
#define ZIP_H

#include <string>
#include <zip.h>

bool IsZipFile(const std::string& file_path);
zip_t* CreateZipArchive(const std::string& zip_path);
bool AddFileToZip(zip_t* archive, const std::string& file_path, const std::string& relative_path);
bool AddDirectoryToZip(zip_t* archive, const std::string& source_path);
bool CompressToZip(const std::string& source_path, const std::string& zip_path);

#endif /* ZIP_H */
