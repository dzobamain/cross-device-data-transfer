/**
 * @file zip.cpp
 * @brief Compresses files into a ZIP archive using libzip.
 *
 * This file provides functionality for compressing files into a ZIP archive
 * using the libzip library. It is used to package files before sending them
 * to the server, ensuring efficient and structured data transfer.
 *
 * Dependencies:
 *  - libzip (https://libzip.org)
*/

#include <iostream>
#include <string>
#include <filesystem>
#include <zip.h>

#include "tozip.h"
#include "fcrud.h"

bool IsZipFile(const std::string& file_path);
zip_t* CreateZipArchive(const std::string& zip_path);
bool AddFileToZip(zip_t* archive, const std::string& file_path, const std::string& relative_path);
bool AddDirectoryToZip(zip_t* archive, const std::string& source_path);

bool CompressToZip(const std::string& source_path, const std::string& zip_path) 
{
    if (IsZipFile(source_path)) {
        /* Does not overwrite an existing .zip archive. */
        zip_t* archive = CreateZipArchive(zip_path);
        if (!archive) return false;

        if (!AddFileToZip(archive, source_path, std::filesystem::path(source_path).filename().string())) {
            return false;
        }
    }

    if (!std::filesystem::exists(source_path)) {
        std::cerr << "Error CompressToZip: " << source_path << " not found." << std::endl;
        return false;
    }

    zip_t* archive = CreateZipArchive(zip_path + ".zip"); /* Creating a .zip archive with the file name for transfer. */
    if (!archive) return false;

    /* Writing to archive. */
    bool success = false;

    if (std::filesystem::is_directory(source_path)) {
        success = AddDirectoryToZip(archive, source_path);
    } 
    else {
        std::string filename = std::filesystem::path(source_path).filename().string();
        success = AddFileToZip(archive, source_path, filename);
    }

    zip_close(archive);
    return success;
}

zip_t* CreateZipArchive(const std::string& zip_path) 
{
    int err = 0;
    zip_t* archive = zip_open(zip_path.c_str(), ZIP_CREATE | ZIP_TRUNCATE, &err);
    if (!archive) {
        std::cerr << "Error CreateZipArchive: " << zip_path << std::endl;
    }

    return archive;
}

bool AddFileToZip(zip_t* archive, const std::string& file_path, const std::string& relative_path) 
{
    zip_source_t* source = zip_source_file(archive, file_path.c_str(), 0, 0);

    if (!source || zip_file_add(archive, relative_path.c_str(), source, ZIP_FL_OVERWRITE) < 0) {
        zip_source_free(source);
        std::cerr << "Error AddFileToZip: " << file_path << std::endl;
        return false;
    }
    
    return true;
}

bool AddDirectoryToZip(zip_t* archive, const std::string& source_path) 
{
    for (const auto& entry : std::filesystem::recursive_directory_iterator(source_path)) {
        if (entry.is_regular_file()) {
            std::string file_path = entry.path().string();
            std::string relative_path = std::filesystem::relative(file_path, source_path).string();

            if (!AddFileToZip(archive, file_path, relative_path)) {
                return false;
            }
        }
    }
    return true;
}

bool IsZipFile(const std::string& file_path) 
{
    return std::filesystem::path(file_path).extension() == ".zip";
}
