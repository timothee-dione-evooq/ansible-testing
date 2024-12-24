#!/bin/bash

FILE_PATH="/home/ansible/hello.txt"

CURRENT_DATE=$(date '+%Y-%m-%d %H:%M:%S')

if [ ! -f "$FILE_PATH" ]; then
    touch "$FILE_PATH"
    echo "Fichier créé : $FILE_PATH"
fi

echo "hello, we are the : $CURRENT_DATE" >> "$FILE_PATH"
echo "Line added into the file: hello, we are the : $CURRENT_DATE"

