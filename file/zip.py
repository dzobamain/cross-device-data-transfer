import os
import zipfile
import shutil

def compress_to_zip(SOURSE_PATH: str, ZIP_PATH: str):
    with zipfile.ZipFile(ZIP_PATH, 'w', zipfile.ZIP_DEFLATED) as zipf:
        if os.path.isdir(SOURSE_PATH):
            for root, _, files in os.walk(SOURSE_PATH):
                for file in files:
                    file_path = os.path.join(root, file)
                    zipf.write(file_path, os.path.relpath(file_path, SOURSE_PATH))
        else:
            zipf.write(SOURSE_PATH, os.path.basename(SOURSE_PATH))

def move_file(INPUT_PATH: str, to_path: str):
    shutil.move(INPUT_PATH, to_path)

def get_filename(SOURSE_PATH: str) -> str:
    base_name = os.path.basename(SOURSE_PATH)
    return base_name