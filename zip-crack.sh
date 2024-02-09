#!/bin/bash

for file in ./*.zip; do
    zip2john "$file" > "$file.hash" 2>/dev/null && \
    john "$file.hash" --wordlist=/usr/share/wordlists/rockyou.txt --format=PKZIP > /dev/null 2>&1 && \
    john "$file.hash" --show | grep "$file"
done
