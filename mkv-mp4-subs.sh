#!/bin/bash

ffmpeg -i "$1" -s hd720 -r 30 -filter_complex "[0:v:0]format=yuv420p,subtitles=$2:force_style='Alignment=2,Fontsize=16,Outline=1,Shadow=1,PrimaryColour=&H00FFFF&' [v]" -map "[v]" -map 0:a:0 -c:v libx264 -profile:v main -c:a aac -ac 2 "$3"
