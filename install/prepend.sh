#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file> <text_to_prepend>"
    exit 1
fi

# Assign arguments to variables
file=$1
text_to_prepend=$2

# Create a temporary file
temp_file=$(mktemp)

# Add the new content to the temporary file
echo "$text_to_prepend" > "$temp_file"

# Append the original file content to the temporary file
cat "$file" >> "$temp_file"

# Move the temporary file to the original file
mv "$temp_file" "$file"

echo "Content prepended successfully."

