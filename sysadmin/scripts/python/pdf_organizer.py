import os
import shutil

# The Directory you want to clean
target_dir = "/home/jeipyyy/Downloads"

# To make sure if the directory path is true
os.makedirs(target_dir, exist_ok=True)
os.makedirs(os.path.join(target_dir, "Pdf"), exist_ok=True)

# Scan the files inside the directory
for filename in os.listdir(target_dir):
# Check if the file is pdf
    if filename.endswith(".pdf"):
        source_path = os.path.join(target_dir, filename)
        dest_path = os.path.join(target_dir, "Pdf", filename)

        # The process where the source and dest is moved.
        shutil.move(source_path, dest_path)
        print(f"Moved: {filename} -> Pdf/")
