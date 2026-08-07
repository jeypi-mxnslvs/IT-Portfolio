# Update: I used pathlib instead of shutil/os
from pathlib import Path

# The directory you want to clean
target_dir = Path.home() / "Downloads"

rules = {
    ".png" : "Images",
    ".jpg" : "Images",
    ".docx" : "Documents",
    ".zip" : "Archives",
    ".sh" : "Scripts"
    
}
# Scan the folder
for file_path in target_dir.iterdir():
    # Check if the file is a folder and not a subfolder
    if file_path.is_file():
        # .suffix to get the extension, lower() to make sure it is in lowercase
        extension = file_path.suffix.lower()
        # Check if the extension is in rules
        if extension in rules:
            # Look into the folder name (Pdf for .pdf)
            folder_name = rules[extension]
            # Create the path for the destination folder (~/Downloads/Pdf)
            dest_dir = target_dir / folder_name
            # Make sure if the path is True
            dest_dir.mkdir(parents=True, exist_ok=True)
            # Move the file to the key:value folder name
            file_path.rename(dest_dir / file_path.name)
            print(f"Moved: {file_path.name} -> {folder_name}/")