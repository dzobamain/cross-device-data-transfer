#include <iostream>
#include <string>
#include <filesystem>
#include <zip.h>

#include "file_utils.h"

bool IsZipFile(const std::string& file_path) 
{
    return std::filesystem::path(file_path).extension() == ".zip";
}

void CompressToZip(const std::string& source_path, const std::string& zip_path) 
{
    if (IsZipFile(source_path)) 
    {
        CopyFile(source_path, GetDirectory(zip_path));
        return;
    }

    if (!std::filesystem::exists(source_path)) 
    {
        std::cerr << "Error CompressToZip: " << source_path << " not found." << std::endl;
        return;
    }

    int err = 0;
    zip_t* archive = zip_open(zip_path.c_str(), ZIP_CREATE | ZIP_TRUNCATE, &err);
    if (!archive) 
    {
        std::cerr << "Error CompressToZip creating ZIP archive: " << zip_path << std::endl;
        return;
    }

    if (std::filesystem::is_directory(source_path)) 
    {
        for (const auto& entry : std::filesystem::recursive_directory_iterator(source_path)) 
        {
            if (entry.is_regular_file()) {
                std::string file_path = entry.path().string();
                std::string relative_path = std::filesystem::relative(file_path, source_path).string();

                zip_source_t* source = zip_source_file(archive, file_path.c_str(), 0, 0);
                if (!source || zip_file_add(archive, relative_path.c_str(), source, ZIP_FL_OVERWRITE) < 0) 
                {
                    zip_source_free(source);
                    std::cerr << "Error CompressToZip adding file: " << file_path << std::endl;
                }
            }
        }
    } 
    else 
    {
        zip_source_t* source = zip_source_file(archive, source_path.c_str(), 0, 0);
        if (!source || zip_file_add(archive, std::filesystem::path(source_path).filename().string().c_str(), source, ZIP_FL_OVERWRITE) < 0) 
        {
            zip_source_free(source);
            std::cerr << "Error CompressToZip adding file: " << source_path << std::endl;
        }
    }

    zip_close(archive);
}
