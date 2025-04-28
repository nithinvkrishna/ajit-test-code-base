#!/bin/bash

# 1. Detect the old .s file name in compile.sh
old_s_file=$(grep -oP '(?<=-s\s)[^ ]+' compile.sh)
old_base_name="${old_s_file%.s}"

echo "Old .s file: $old_s_file"
echo "Old base name: $old_base_name"

# 2. Scan the parent directory for .s files
s_files=$(ls ../*.s)

# 2.1 If only one .s file exists, check if it's the same as the old one
s_file_count=$(echo "$s_files" | wc -l)

if [ "$s_file_count" -eq 1 ]; then
    # Only one .s file, check if it matches the old one
    new_s_file=$(echo "$s_files" | head -n 1)

    if [[ "$old_s_file" == "$new_s_file" ]]; then
        echo "No change needed. The same .s file is being used."
    else
        echo "Replacing the old .s file reference in compile.sh with $new_s_file"
        sed -i "s|$old_s_file|$new_s_file|g" compile.sh
    fi

elif [ "$s_file_count" -gt 1 ]; then
    # If multiple .s files are found, ask the user to select one
    echo "Multiple .s files found. Please select the correct file:"
    select new_s_file in $s_files; do
        if [[ -n "$new_s_file" ]]; then
            echo "You selected: $new_s_file"
            break
        else
            echo "Invalid selection. Please try again."
        fi
    done

    # Remove the .s extension from the selected file name
    selected_base_name="${new_s_file%.s}"

    # If the selected base name is the same as the old base name, do nothing
    if [ "$selected_base_name" == "$old_base_name" ]; then
        echo "No change needed. The old .s file is still being used."
    else
        echo "Replacing the old .s file reference in compile.sh with $new_s_file"
        sed -i "s|$old_s_file|$new_s_file|g" compile.sh
    fi
else
    echo "No .s files found in the parent directory."
fi

