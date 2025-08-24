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

#include <string>
#include <filesystem>
#include <zip.h>

#include <file/tozip.h>
#include <util/log.h>

bool CompressToZip(const std::string& source_path, const std::string& zip_path) 
{
    LOG_OUT("Start compressing: " << source_path);

    if (!std::filesystem::exists(source_path)) {
        LOG_ERR("Source path not found: " << source_path);
        return false;
    }

    if (IsZipFile(source_path)) {
        LOG_OUT("File is already a ZIP: " << source_path);
        return true;
    }

    zip_t* archive = CreateZipArchive(zip_path + ".zip");
    if (!archive) {
        LOG_ERR("Failed to create zip archive: " << zip_path);
        return false;
    }

    bool success = false;
    if (std::filesystem::is_directory(source_path)) {
        LOG_OUT("Adding directory to archive: " << source_path);
        success = AddDirectoryToZip(archive, source_path);
    } 
    else {
        std::string filename = std::filesystem::path(source_path).filename().string();
        LOG_OUT("Adding file to archive: " << source_path << " -> " << filename);
        success = AddFileToZip(archive, source_path, filename);
    }

    if (success) {
        zip_close(archive);
        LOG_OUT("Archive created successfully: " << zip_path << ".zip");
    } else {
        LOG_ERR("Failed to add files to archive: " << source_path);
        zip_discard(archive);
    }

    return success;
}

zip_t* CreateZipArchive(const std::string& zip_path) 
{
    LOG_OUT("Creating zip archive: " << zip_path);

    int err = 0;
    zip_t* archive = zip_open(zip_path.c_str(), ZIP_CREATE | ZIP_TRUNCATE, &err);
    if (!archive) {
        LOG_ERR("Failed to open archive for writing: " << zip_path);
    } else {
        LOG_OUT("Archive created: " << zip_path);
    }

    return archive;
}

bool AddFileToZip(zip_t* archive, const std::string& file_path, const std::string& relative_path) 
{
    LOG_OUT("Adding file: " << file_path << " as " << relative_path);

    zip_source_t* source = zip_source_file(archive, file_path.c_str(), 0, 0);
    if (!source) {
        LOG_ERR("Failed to open file for zipping: " << file_path);
        return false;
    }

    if (zip_file_add(archive, relative_path.c_str(), source, ZIP_FL_OVERWRITE) < 0) {
        zip_source_free(source);
        LOG_ERR("Failed to add file to archive: " << file_path);
        return false;
    }

    LOG_OUT("File added: " << file_path);
    return true;
}

bool AddDirectoryToZip(zip_t* archive, const std::string& source_path) 
{
    LOG_OUT("Adding directory: " << source_path);

    for (const auto& entry : std::filesystem::recursive_directory_iterator(source_path)) {
        if (entry.is_regular_file()) {
            std::string file_path = entry.path().string();
            std::string relative_path = std::filesystem::relative(file_path, source_path).string();

            LOG_OUT("Adding file from directory: " << file_path << " -> " << relative_path);
            if (!AddFileToZip(archive, file_path, relative_path)) {
                LOG_ERR("Failed to add file from directory: " << file_path);
                return false;
            }
        }
    }

    LOG_OUT("Directory added successfully: " << source_path);
    return true;
}

bool IsZipFile(const std::string& file_path) 
{
    bool result = std::filesystem::path(file_path).extension() == ".zip";
    LOG_OUT("Checking file type: " << file_path << " -> " << (result ? "ZIP" : "NOT ZIP"));
    return result;
}
