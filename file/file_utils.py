import os
import shutil

def move_file(SOURCE_PATH: str, TO_PATH: str) -> None: 
    if (not os.path.exists(SOURCE_PATH)) or (not os.path.exists(TO_PATH)):
        print(f"Error move_file: {SOURCE_PATH} or {TO_PATH} not found.")
        return

    shutil.move(SOURCE_PATH, TO_PATH)

def copy_file(COPY_FROM_PATH: str, TO_PATH: str) -> None:
    if (not os.path.exists(COPY_FROM_PATH)) or (not os.path.exists(TO_PATH)):
        print(f"Error copy_file: {COPY_FROM_PATH} or {TO_PATH} not found.")
        return
    
    if os.path.isdir(TO_PATH):
        TO_PATH = os.path.join(TO_PATH, os.path.basename(COPY_FROM_PATH))
    
    shutil.copyfile(COPY_FROM_PATH, TO_PATH)

def get_filename(SOURCE_PATH: str) -> str:
    if not os.path.exists(SOURCE_PATH):
        print(f"Error get_filename: {SOURCE_PATH} not found.")
        return

    base_name = os.path.basename(SOURCE_PATH)
    return base_name

def read_file_as_array(FILE_PATH: str) -> list:
    if not os.path.exists(FILE_PATH):
        print(f"Error read_file_as_2d_array: {FILE_PATH} not found.")
        return []

    with open(FILE_PATH, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    return [line.strip() for line in lines]

def save_to_file(TEXT: str, FILE_PATH: str) -> None:
    if TEXT is None:
        print("Error save_to_file: The provided text is empty.")
        return
    if not os.path.exists(FILE_PATH):
        print(f"Error save_to_file: {FILE_PATH} not found.")
        return
    
    try:
        with open(FILE_PATH, "w", encoding="utf-8") as file:
            file.write(TEXT)
    except Exception as e:
        print(f"Error save_to_file: {e}")

def remove_file(FILE_PATH: str) -> None:
    try:
        os.remove(FILE_PATH)
    except FileNotFoundError:
        print(f"Error remove_file: {FILE_PATH} not found.")
    except Exception as e:
        print(f"Error remove_file: {e}")

def get_directory(PATH: str) -> str:
    return os.path.dirname(PATH)