from file.zip import compress_to_zip, get_filename

def main():
    source_path = ""
    SAVE_ZIP_TO = f"send/{get_filename(source_path)}.zip"
    
    compress_to_zip(source_path, SAVE_ZIP_TO)

if __name__ == "__main__":
    main()