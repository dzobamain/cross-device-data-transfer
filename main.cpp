#include <iostream>
#include <string>
#include "file/file_utils.h"
#include "file/zip.h"
#include "user/user_data.h"

int main() 
{
    /* Example of file archiving usage: pass the file in source_path. */
    /*
    std::string source_path = "";
    std::string file = GetFileName(source_path);
    std::string save_to = std::format("send/{}", file);

    CompressToZip(source_path, save_to);
    */

    /* Example of working with user data */

    std::cout << IsUserFotoValid("not_foto.jpg");

    return -1;
}