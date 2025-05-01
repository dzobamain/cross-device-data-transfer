import os
import zipfile
import shutil

def compress_to_zip(SOURCE_PATH: str, ZIP_PATH: str = "send/") -> None:
    if is_zip_file(SOURCE_PATH):
        move_file(SOURCE_PATH, ZIP_PATH)
        return
    
    if (not os.path.exists(SOURCE_PATH)) or (not os.path.exists(ZIP_PATH)):
        print(f"Error: {SOURCE_PATH} or {ZIP_PATH} not found.")
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

def move_file(SOURCE_PATH: str, TO_PATH: str) -> None: 
    if (not os.path.exists(SOURCE_PATH)) or (not os.path.exists(TO_PATH)):
        print(f"Error: {SOURCE_PATH} or {TO_PATH} not found.")
        return

    shutil.move(SOURCE_PATH, TO_PATH)

def copy_file(COPY_FROM_PATH: str, TO_PATH: str) -> None:
    if (not os.path.exists(COPY_FROM_PATH)) or (not os.path.exists(TO_PATH)):
        print(f"Error: {COPY_FROM_PATH} or {TO_PATH} not found.")
        return

    shutil.copyfile(COPY_FROM_PATH, TO_PATH)

def get_filename(SOURCE_PATH: str) -> str:
    if not os.path.exists(SOURCE_PATH):
        print(f"Error: {SOURCE_PATH} not found.")
        return

    base_name = os.path.basename(SOURCE_PATH)
    return base_name

def read_file_as_2d_array(FILE_PATH: str) -> list:
    if not os.path.exists(FILE_PATH):
        print(f"Error: {FILE_PATH} not found.")
        return

    with open(FILE_PATH, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    return [[line.strip()] for line in lines]

def save_to_file(TEXT: str, FILE_PATH: str) -> None:
    if TEXT is None:
        print("Error: The provided text is empty.")
        return
    elif not os.path.exists(FILE_PATH):
        print(f"Error: {FILE_PATH} not found.")
        return
    
    try:
        with open(FILE_PATH, "w", encoding="utf-8") as file:
            file.write(TEXT)
    except Exception as e:
        print(f"Error writing to file '{FILE_PATH}': {e}")
