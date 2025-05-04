import os
import zipfile
import shutil

from file.file_utils import copy_file, get_directory

def compress_to_zip(SOURCE_PATH: str, ZIP_PATH: str) -> None:
    if is_zip_file(SOURCE_PATH):
        copy_file(SOURCE_PATH, get_directory(ZIP_PATH))
        return
    
    if not os.path.exists(SOURCE_PATH):
        print(f"Error compress_to_zip: {SOURCE_PATH} not found.")
        return

    with zipfile.ZipFile(ZIP_PATH, 'w', zipfile.ZIP_DEFLATED) as zipf:
        if os.path.isdir(SOURCE_PATH):
            for root, _, files in os.walk(SOURCE_PATH):
                for file in files:
                    file_path = os.path.join(root, file)
                    zipf.write(file_path, os.path.relpath(file_path, SOURCE_PATH))
        else:
            zipf.write(SOURCE_PATH, os.path.basename(SOURCE_PATH))

def is_zip_file(FILE_PATH: str) -> bool:
    return os.path.splitext(FILE_PATH)[1] == ".zip"