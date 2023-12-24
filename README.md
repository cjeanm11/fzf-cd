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

- To add a directory to your bookmarks, use the command:

  ```bash
  fcd -add /path/to/directory # option tag: -a

- To remove a directory from your bookmarks, use the command:

  ```bash
  fcd -remove /path/to/directory # option tag: -rm, -r

- To list your bookmarked directories, run:

  ```bash
  fcd -list # option tag: -ls, -l

- To navigate to a bookmarked directory, use the command:

  ```bash
  fcd -goto bookmark_number # option tag: -g, -go

### Directory Stack

- To push the current directory onto the stack, use the command:

  ```bash
  fcd -push # optional tag: -pu

- To pop and navigate to the top directory on the stack, use:

  ```bash
  fcd -pop # optional tag: -pp

