#!/bin/bash

input_dir="input"

maleDominantCount=0
femaleDominantCount=0

for file in "$input_dir"/*; do

result=$(awk -f a1.awk "$file")

case $result in
"m") (( maleDominantCount++));;
"f") (( femaleDominantCount++));;
esac
done

if (( maleDominantCount > femaleDominantCount)); then
echo "it is a male dominant world!"
elif (( femaleDominantCount > maleDominantCount)); then
echo "it is a female dominant world!"
else
echo "it is a gender-balanced world!"
fi
