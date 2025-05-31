#!/bin/bash

# Check if main session already exists
if tmux has-session -t main 2>/dev/null; then
    tmux attach-session -t main
    exit 0
fi

# Create new session (will be window 1 with base-index 1)
tmux new-session -d -s main -n "main"

# Server window (will be window 2)
tmux new-window -n "server" -c "/home/drillchan/bbc-dev/bbc-api"
tmux split-window -h -t main:server -c "/home/drillchan/bbc-dev/Bethel-Baptist-Church" 
tmux split-window -v -t main:server.1 -c "/home/drillchan/bbc-dev/bbc-web-admin"

# Other windows (will be 3, 4, 5, 6)
tmux new-window -n "htop" "htop"
tmux new-window -n "terminal2"
tmux new-window -n "terminal3"
tmux new-window -n "terminal4" 

# Select first window and attach
tmux select-window -t main:1
tmux attach-session -t main
