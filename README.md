# fcd - Directory Navigation and Bookmarking

This script provides directory navigation and bookmarking using a command-line fuzzy finder.
## Prerequisites

- [fzf](https://github.com/junegunn/fzf): The script uses fzf for interactive directory selection and should install it automatically if not present.

## Installation

Clone or download the script using `git clone https://github.com/cjeanm11/fzf-cd.git`, make it executable with `chmod +x fzd-cd.sh`, and add the script's location to your system's PATH environment variable by running `export PATH=$PATH:/path/to/directory`. You can find an exemple setup [here](https://github.com/cjeanm11/config).

## Usage

- **Navigating with Fuzzy Search:** `fcd` without arguments.
- **Listing Bookmarks:** `fcd -l`
- **Adding a Bookmark Path:** `fcd -a <directory-path>`. If no argument is provided, it will use the current working directory as the default path for the bookmark.
- **Removing a Bookmark Path:** `fcd -r <directory-path>`
- **Go to a Bookmark:** `fcd -g <bookmark-number>`. If no second argument is provided, t will prompt for an interactive input.
- **Pushing Current Directory:** `fcd -push`
- **Popping Directory:** `fcd -pop`

## Custom Git Clone

The script incorporates a specialized Git alias that, upon cloning a repository, changes to the cloned directory and also bookmarks it automatically.