#!/usr/bin/env bash

file=$(find $(xdg-user-dir VIDEOS) -type f \( -name "*.mp4" -o -name "*.mkv" \) | fzf -e\
      --layout reverse  --border\
      --color 'fg:#F3EDFA,fg+:#ddeeff,bg:#561FCE,preview-bg:#223344,border:#561FCE')
#mediainfo "$file"
mpv "$file"