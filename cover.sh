#!/usr/bin/env bash
# usage.: cover imv

music_library="$HOME/Música"
option=$1

ffmpeg -y -i "$(mpc --format "$music_library"/%file% | head -n 1)" \
            /tmp/mpd_cover.jpg &> /dev/null

cover_path="/tmp/mpd_cover.jpg"

$1 "$cover_path"


