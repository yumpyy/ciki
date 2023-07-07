#!/bin/bash

query="$@"
title=${query^}
query=$(echo $query | tr ' ' '_')
content=$(curl -sL "https://en.wikipedia.org/w/index.php?search=$query" | grep "<p>" | sed -e 's/<[^>]*>//g' -e 's/\&\#[0-9][0-9]//g' -e 's/\;[0-9][0-9]\;//g'  -e 's/\;//g' | head -1)
echo -e "\033[1m$title\033[0m\\n$content"
