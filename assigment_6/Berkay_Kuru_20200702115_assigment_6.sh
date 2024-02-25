#!/bin/sh
echo "enter file name: "
read file_name
if [ -f $file_name ]
then
echo "The $file_name exists"
else
echo "There is no file named $file_name"
fi

if [ -s $file_name ] 
then
echo "The $file_name is not empty"
else
ls ~/Desktop > "$file_name"
fi

number_of_ch=$(wc -c "$file_name")
echo "Number of characters: $number_of_ch"
number_of_w=$(wc -w "$file_name")
echo "Number of words: $number_of_w"
number_of_l=$(wc -l "$file_name")
echo "Number of lines: $number_of_l"

echo "Enter a word : "
read word
num_occurrences=$(grep -o -w "$word" "$file_name" | wc -l)

if [ "$num_occurrences" -gt 0 ]
then
echo "The word '$word' appears $num_occurrences times in the file."
else
echo "The word '$word' does not appear in the file."
fi

touch new_file.txt

if [ -w new_file.txt ]
then
echo "write permisson enabled."
else
chmod +w new_file.txt
fi

date_time=$(date)
echo " Date , Time :$date_time" > new_file.txt

user_info=$(whoami)
echo " Current user: $user_info" >> new_file.txt
