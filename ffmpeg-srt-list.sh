#!/bin/bash

LOCAL_LIST=$(ffprobe -v error -select_streams s -show_entries stream=index:stream_tags=title -of csv=p=0 "$1")
LOCAL_COUNT=0
for LOCAL_LINE in "$LOCAL_LIST"
do
  IFS=',' read -ra LOCAL_FIELDS <<< "$LOCAL_LINE"
  echo $LOCAL_COUNT"="${LOCAL_FIELDS[1]}
  LOCAL_COUNT=$(( LOCAL_COUNT + 1 ))
done
