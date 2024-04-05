#!/bin/bash

for file in files/*.txt; do
        first_letter=$(basename "$file" | cut -c1 | tr '[:upper:]' '[:lower:]')
        if [ -d "./$first_letter" ]; then
            mv "$file" "./$first_letter/"
        fi
done