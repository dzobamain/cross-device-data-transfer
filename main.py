from file.to_zip import Compress_to_zip

def main():
    output_file = "'/Users/volodymyrdzoba/Downloads/New TXT File.txt'"
    save_zip_to = "../send"
    
    Compress_to_zip(output_file, save_zip_to)

if __name__ == "__main__":
    main()