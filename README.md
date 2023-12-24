# fcd - Directory Navigation and Bookmarking

`fcd` is a Bash script that allows you to navigate directories, bookmark them, and manage your directory stack.

## Dependencies

[fzf - command-line fuzzy finder](https://github.com/junegunn/fzf): This script relies on the fzf tool for interactive directory selection.

## Installation

To install `fcd`, clone or download the script to your preferred directory using `git clone https://github.com/cjeanm11/fzf-cd.git`, make it executable with `chmod +x fzd-cd.sh`, and add the script's location to your system's PATH environment variable by running `export PATH=$PATH:/path/to/directory`, where you replace `/path/to/directory` with the actual directory path where you've placed the `fcd` script. You can find an exemple [here](https://github.com/cjeanm11/config).

## Usage

To use `fcd`, follow these commands:

### Navigation

- To navigate to a directory, simply run `fcd`. This will open an interactive fuzzy finder where you can select the directory you want to navigate to.

### Bookmarks

- Add a directory to your bookmarks. If no second argument is provided, it will default to the current working directory.

  ```bash
  fcd -add /path/to/directory     # -a

- Remove a directory from your bookmarks.

  ```bash
  fcd -remove /path/to/directory  # -rm, -r

- List your bookmarked directories.

  ```bash
  fcd -list                       # -ls, -l

- Navigate to a bookmarked directory. If no second argument is provided, it will default to an interactive input reader.

  ```bash
  fcd -goto bookmark_number       # -g, -go

### Directory Stack

- Push the current directory onto the stack.

  ```bash
  fcd -push                       # -pu

- Pop and navigate to the top directory on the stack.

  ```bash
  fcd -pop                        # -pp

### Exemple usage

  ```bash
  ~(master*)$ fcd                                     # Fuzzy find and change directory.
  zig(master*)$ fcd -a                                # Add working directory as a bookmark.
  Added /Users/cjeanm/code/zig to bookmarks.
  zig(master*)$ cd ~                                  # Go back to home directory.
  ~(master*)$ fcd -g                                  # Go to a selected bookmark.
  Bookmarked Directories:
  [1] - /Users/cjeanm/code/zig
  Enter the number of the bookmarked path you want to navigate to: 
  1                                                   # Enter bookmark number.
  Navigated to /Users/cjeanm/code/zig
  zig(master*)$ 
