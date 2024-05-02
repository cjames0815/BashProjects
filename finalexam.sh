#!/bin/bash
# Array of programming languages
languages=("C" "C++" "R" "Bash" "Go" "Rust")

# Display initial array
display_languages

# Prompt user for action
read -p "Would you like to update (U) or add (A) a language? " action


    
read -p "Enter the language to update: " old_lang
        read -p "Enter the new language: " new_lang
        update_language "$old_lang" "$new_lang"
    
    
        read -p "Enter the language to add: " $new_lang
        add_language "$new_lang"
        
    
        echo "Invalid input."
        

    
# Function to display array of programming languages
display_languages() {
    echo "Programming Languages:"
    for lang in "${languages[@]}"; do
        echo "$lang"
    done
}

# Function to update a programming language in the array
update_language() {
    local old_lang=$1
    local new_lang=$2
    local index=-1
    for i in "${!languages[@]}"; do
        if [[ "${languages[$i]}" = "$old_lang" ]]; then
            index=$i
            break
        fi
    done
    if [ $index -ge 0 ]; then
        languages[$index]=$new_lang
        echo "Update successful. Updated array:"
        display_languages
    else
        echo "Update failed. Language does not exist in array."
    fi
}

# Function to add a programming language to the array
add_language() {
    local new_lang=$1
    languages+=("$new_lang")
    echo "Add successful. Updated array:"
    display_languages
}


