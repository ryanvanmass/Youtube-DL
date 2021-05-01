#!/bin/bash
youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 -o '/home/youtube/output/%(title)s.%(ext)s' $1