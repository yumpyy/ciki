#!/bin/bash

read -p "Word : " word
words_array=($words)
count=${#words_array[@]}

if [ $count -gt 1 ]; then
  new_words=""
  for word in "${words_array[@]}"; do
    new_words+="$word""_"
  done
  new_words=${new_words:0:-1}
else
  new_words="$words"
fi
IFS=_ ; read -ra words <<< $new_words ; printf '%new_words\n' "${words[*]^}" ; unset IFS
echo "$words"
