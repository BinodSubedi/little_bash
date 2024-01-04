#!/bin/bash

# Specify the backup directory
backup_dir="/home/qubit/Documents/backup"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"


# Get the path of the directory to back up from the argument
directory_to_backup="$1"

# Check if the directory exists
if [ ! -d "$directory_to_backup" ]; then
  echo "Error: Directory '$directory_to_backup' does not exist."
  exit 1
fi

# Create a timestamp for the backup file name
timestamp=$(date +%Y-%m-%d_%H-%M-%S)

# Create the compressed tar archive
tar_file="$backup_dir/${directory_to_backup##*/}_${timestamp}.tar.gz"
tar -czf "$tar_file" "$directory_to_backup"

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup successful: $tar_file"
else
  echo "Backup failed."
fi
