# fzf-cd

This script provides directory navigation and bookmarking using a command-line fuzzy finder.

## Prerequisites

- [fzf](https://github.com/junegunn/fzf): The script uses fzf for interactive directory selection.
## Installation

Clone or download the script using `git clone https://github.com/cjeanm11/fzf-cd.git`, make it executable with `chmod +x fzd-cd.sh`, and add the script's location to your system's PATH environment variable by running `export PATH=$PATH:/path/to/directory`. You can find an exemple setup [here](https://github.com/cjeanm11/config).

## Usage

- **Navigating with Fuzzy Search:** `fcd` without arguments. If you provide a path as an argument, it will default to using the regular `cd`.
- **Listing Bookmarks:** `fcd -l` to display the list of bookmarked `<directory-path>` with their associated `<bookmark-number>`.
- **Adding Bookmark Paths:** `fcd -a <directory-path>`. If no argument is provided, it will use the current working directory as the default path for the bookmark.
- **Removing Bookmark Paths:** `fcd -r <directory-path>` and `fcd -r --all` to remove all bookmarks.
- **Go to a Bookmark:** `fcd -g <bookmark-number>`. If no second argument is provided, t will prompt for an interactive input.
- **Pushing Current Directory:** `fcd -push`
- **Popping Directory:** `fcd -pop`
- **Show help message:** `fcd --help`
