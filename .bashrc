#
# ~/.bashrc
#

# If not running interactively, don't do anything


####
# EXISTING BASH RC
####


# Auto-start tmux on every interactive shell
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    ~/.tmux-startup.sh
fi
