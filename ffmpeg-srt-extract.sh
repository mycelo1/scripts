#!/bin/bash

ffmpeg -i "$1" -map 0:s:0 "$2"
