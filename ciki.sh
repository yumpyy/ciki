#!/bin/bash

query="$@"
# clear
# read -p "Search : " query
query=${query^}
title=$(curl -s https://en.wikipedia.org/wiki/$query | grep mw-page-title-main | cut -d'>' -f3 | cut -d'<' -f1)
# echo "$title"
echo -e "\033[1m$title\033[0m"
curl -s https://en.wikipedia.org/wiki/$query | grep "<p>" | sed -e 's/<[^>]*>//g' -e 's/\&\#[0-9][0-9]//g' -e 's/\;[0-9][0-9]\;//g' | head -3
