#ifndef ZIP_H
#define ZIP_H

#include <iostream>
#include <string>
#include <filesystem>
#include <zip.h>

#include "file_utils.h"

extern bool IsZipFile(const std::string& file_path);
extern void CompressToZip(const std::string& source_path, const std::string& zip_path);

#endif /* ZIP_H */