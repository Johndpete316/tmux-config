# tmux-config

This repository provides a set of configuration files and scripts to enhance your tmux environment with custom keybindings, window management, and automatic session startup.

## Files Overview

- **.tmux.conf**: Customizes tmux behavior and appearance. Key features:
  - Changes the default prefix to `Ctrl-a` (instead of `Ctrl-b`).
  - Enables mouse support and disables automatic window renaming.
  - Provides convenient keybindings for splitting panes, switching windows/panes, and reloading the config.
  - Sets up Alt+number shortcuts for quick window switching.
  - Styles the tmux status bar for clarity.

- **.tmux-startup.sh**: Bash script to automatically create (or attach to) a main tmux session with multiple pre-configured windows and panes for different projects and tools (e.g., server, htop, terminals).

- **.bashrc** (snippet): Ensures tmux starts automatically when you open a new interactive shell, unless already inside tmux.

## Installation

1. **Clone or copy the files to your home directory**

   Place the files in your home directory, renaming as needed:

   ```sh
   cp /path/to/tmux-config/.tmux.conf ~/.tmux.conf
   cp /path/to/tmux-config/.tmux-startup.sh ~/.tmux-startup.sh
   chmod +x ~/.tmux-startup.sh
   ```

2. **Update your `~/.bashrc`**

   Add the following lines to the end of your `~/.bashrc` (if not already present):

   ```bash
   # Auto-start tmux on every interactive shell
   if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
       ~/.tmux-startup.sh
   fi
   ```

   or by running the following command to append the config to your existing .bashrc
   
   ```
   cat tmux-config/.bashrc >> .bashrc
   ```

3. **Reload your shell**

   Run `source ~/.bashrc` or open a new terminal window. tmux should start automatically with your custom session layout.

## Notes
- You can customize the directories and window names in `.tmux-startup.sh` to fit your workflow.
- To reload tmux config while inside tmux, press `Ctrl-a` then `r`.
- To switch windows, use `Alt+number` (e.g., `Alt+1` for the first window).
