import os
from file.zip import read_file_as_array, save_to_file, copy_file, get_filename

USER_PROFILE = "user/user_profile.txt"

def new_user_name(NEW_USER_NAME: str):
    if NEW_USER_NAME == None or NEW_USER_NAME == read_file_as_array(USER_PROFILE)[0]:
        return
    
    user_data = f"{NEW_USER_NAME}\n{read_file_as_array(USER_PROFILE)[1]}"
    save_to_file(user_data, USER_PROFILE)
    
def new_user_foto(NEW_USER_FOTO_PATH: str):
    if NEW_USER_FOTO_PATH == None or NEW_USER_FOTO_PATH == read_file_as_array(USER_PROFILE)[1]:
        return
    
    copy_file(NEW_USER_FOTO_PATH, "user/")
    
    user_data = f"{read_file_as_array(USER_PROFILE)[0]}\nuser/{get_filename(NEW_USER_FOTO_PATH)}"
    save_to_file(user_data, USER_PROFILE)