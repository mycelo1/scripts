#!/bin/bash

ffmpeg -itsoffset $2 -i $1 -c copy $3
