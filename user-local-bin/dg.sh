#!/bin/bash

# Navigate to the Devilbox directory
cd ~/Applications/devilbox || exit  # Adjusted the path

# Prompt for the project name
read -p "Please enter your project name: " project_name

# Create the project directory
mkdir -p "./data/www/$project_name/.devilbox"

# Copy vhost-gen templates
cp cfg/vhost-gen/*.yml "./data/www/$project_name/.devilbox"

# Prompt for the index folder name
read -p "Please enter your index folder (or press Enter to skip): " index_folder

# Check if the user provided an index folder name
if [ -z "$index_folder" ]; then
    # Default to creating the index.php in the htdocs directory
    index_folder="htdocs"
    mkdir -p "./data/www/$project_name/$index_folder"
    echo "<?php echo 'Hello, $project_name!'; ?>" > "./data/www/$project_name/$index_folder/index.php"
else
    # Create the specified index folder
    mkdir -p "./data/www/$project_name/htdocs/$index_folder"
    echo "<?php echo 'Hello, $project_name!'; ?>" > "./data/www/$project_name/htdocs/$index_folder/index.php"
fi

echo "Project $project_name created successfully."
