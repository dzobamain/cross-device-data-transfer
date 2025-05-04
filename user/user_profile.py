import os

from file.file_utils import read_file_as_array, save_to_file, remove_file, copy_file, get_filename

USER_PROFILE = "user/user_profile.txt"
USER_DIR = "user/"

def new_user_name(NEW_USER_NAME: str):
    if NEW_USER_NAME == None or NEW_USER_NAME == read_file_as_array(USER_PROFILE)[0]:
        return
    
    user_profile = f"{NEW_USER_NAME}\n{read_file_as_array(USER_PROFILE)[1]}"
    save_to_file(user_profile, USER_PROFILE)
    
def new_user_foto(NEW_USER_FOTO_PATH: str):
    if NEW_USER_FOTO_PATH == None or NEW_USER_FOTO_PATH == read_file_as_array(USER_PROFILE)[1] or  not os.path.isfile(NEW_USER_FOTO_PATH):
        return
    
    alt_foto = read_file_as_array(USER_PROFILE)[1]
    if alt_foto != f"{USER_DIR}not_foto.jpg":
        remove_file(alt_foto)
    
    copy_file(NEW_USER_FOTO_PATH, USER_DIR)
    
    user_profile = f"{read_file_as_array(USER_PROFILE)[0]}\n{USER_DIR}{get_filename(NEW_USER_FOTO_PATH)}"
    save_to_file(user_profile, USER_PROFILE)

def get_user_profile() -> list:
    user_profile = read_file_as_array(USER_PROFILE)

    updated = False

    if is_effectively_empty(user_profile[0]):
        user_profile[0] = by_default()[0]
        updated = True

    if not os.path.isfile(user_profile[1]):
        user_profile[1] = by_default()[1]
        updated = True

    if updated:
        save_to_file(f"{user_profile[0]}\n{user_profile[1]}", USER_PROFILE)

    return read_file_as_array(USER_PROFILE)
        
def is_effectively_empty(text: str) -> bool:
    return "".join(text.split()) == ""

def by_default() -> list:
    return ["user_name", "user/not_foto.jpg"]