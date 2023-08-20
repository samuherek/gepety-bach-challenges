#Challenge 10: Directory Backup
#Objective: Write a bash script that does the following:

#Accepts a directory path as its first argument and a backup destination as its second argument.
#If the directory does not exist, print an error and exit.
#If the backup destination does not exist, create it.
#Copy the entire directory to the backup destination with the current date appended to its name.
#Print a confirmation message when the backup has been completed.
#For example, if the directory is /home/user/documents and the backup destination is /home/user/backup, after running the script, there should be a directory like /home/user/backup/documents_YYYY-MM-DD.

#Hint: You might find commands like date, mkdir, and cp useful.

src="$1"
dest="$2"

if [[ ! -d "$src" ]]; then
    echo "Error: You have to provide exiting directroy as first argument." >&2
    exit 1 
fi

if [[ -z "$dest" ]]; then
    echo "Error: You must provide the backup destination directory as second argument." >&2
    exit 1
fi

if [[ ! -d "$dest" ]]; then
    mkdir -p "$dest"
fi

dir=$(basename "$src")
today=$(date '+%Y-%m-%d')
cp -r "$src" "${dest}/${dir}_${today}"


echo "Backup has completed"
