declare -a directory_stack
declare -a bookmarks

# Push the current directory onto the stack
pushd() {
    directory_stack+=("$PWD")
}

# Pop the top directory from the stack and navigate to it
popd() {
    if [ ${#directory_stack[@]} -gt 0 ]; then
        local target_dir="${directory_stack[-1]}"
        directory_stack=("${directory_stack[@]:0:(${#directory_stack[@]}-1)}")
        cd "$target_dir"
    else
        echo "Directory stack is empty."
    fi
}

fcd() {
    if [[ "$1" == "-l" || "$1" == "-ls" || "$1" == "-list" ]]; then # list
        list_bookmarks
    elif [[ "$1" == "-add" || "$1" == "-a" ]]; then # add to bookmarks
        if [ -z "$2" ]; then 
            echo "Usage: fcd add <directory>"
        else
            add_to_bookmarks "$2"
        fi
    elif [[ "$1" == "-remove" || "$1" == "-r" || "$1" == "-rm" ]]; then # rm from bookmarks
        if [ -z "$2" ]; then
            echo "Usage: fcd remove <directory>"
        else
            remove_from_bookmarks "$2"
        fi
    elif [[ "$1" == "-push" || "$1" == "-pu" ]]; then # add to dir. stack
        if pushd .; then 
            echo "Pushed current directory onto the stack."
        else
            echo "Failed to push current directory onto the stack."
        fi
    elif [[ "$1" == "-pop" || "$1" == "-pp" ]]; then # rm from dir. stack
        if popd >/dev/null 2>&1; then
            echo "Popped and navigated to the top directory on the stack."
        else
            echo "Directory stack is empty or an error occurred while popping."
        fi
    else 
        # fuzzy find and change dir.
        local target_dir="$(find ~/. -type d -print | fzf)"
        if [ -n "$target_dir" ]; then
            pushd "$target_dir"
        else
            echo "Invalid directory or command. Use 'ls' to list bookmarks, 'add' or 'a' to add a bookmark, 'remove' or 'r' to remove a bookmark."
            return 1
        fi
    fi
}


# Add a directory to bookmarks
add_to_bookmarks() {
    if [ -n "$1" ]; then
        bookmarks+=("$1")
        echo "Added $PWD to bookmarks."
    else
        bookmarks+=("$PWD")
        echo "Added $PWD to bookmarks."
    fi
}

# List bookmarks
list_bookmarks() {
    if [ ${#bookmarks[@]} -eq 0 ]; then
        echo "No bookmarks found."
    else
        echo "Bookmarked Directories:"
        for dir in "${bookmarks[@]}"; do
            echo "  $dir"
        done
    fi
}


# Remove a directory from bookmarks
remove_from_bookmarks() {
    local target_dir="$1"
    bookmarks=("${bookmarks[@]/$target_dir}")
    echo "Removed $target_dir from bookmarks."
}
