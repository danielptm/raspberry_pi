#!/bin/bash

# Prompt for server details
read -p "Enter server address (username@<ip>): " server_address

# Prompt for password (secure input)
read -s -p "Enter password for $server_address: " server_password
echo

# Prompt for target location on the server
read -p "Enter target directory on server [/home/danieltuttle/projects/uploads]: " target_dir
target_dir=${target_dir:-/home/danieltuttle/projects/uploads}

# Prompt for file to upload
while true; do
    read -p "Enter absolute path to the file you want to upload: " file_path
    if [[ -f "$file_path" ]]; then
        break
    else
        echo "File does not exist. Please try again."
    fi
done

# Use sshpass and scp to upload the file
if ! command -v sshpass &> /dev/null; then
    echo "Error: 'sshpass' is not installed. Please install it first."
    exit 1
fi

echo "Uploading $file_path to $server_address:$target_dir ..."
sshpass -p "$server_password" scp "$file_path" "$server_address":"$target_dir"

if [[ $? -eq 0 ]]; then
    echo "Upload successful!"
else
    echo "Upload failed."
fi

