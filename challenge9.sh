#Challenge 9: File Testing
#Objective: Write a bash script that does the following:

#Accepts a filename as an argument.
#Checks if the file exists.
#If it exists, print "The file [filename] exists."
#If it doesn't exist, print "The file [filename] does not exist."
#If the file exists, check if it's writable.
#If it's writable, print "You have write permissions for [filename]."
#Otherwise, print "You do not have write permissions for [filename]."
#Hint: In bash, there are test commands (often wrapped in [[ ... ]]) that you can use to check for various file attributes.

if [[ -z "$1" ]]; then
    echo "Please provide a file path"
    exit 1
fi

file=$1
if [[ -f "$file" ]]; then
    echo "The file ${file} exists."
    if [[ -w "$file" ]]; then
        echo "You have write permissions for ${file}."
    else 
        echo "You do not have write permissions for ${file}."
    fi
else 
    echo "The file ${file} does not exist."
fi

