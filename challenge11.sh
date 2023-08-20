#Challenge 11: Log Processor
#Objective: Write a bash script that processes a hypothetical log file. The log file has lines formatted as follows:

#code
#[YYYY-MM-DD HH:MM:SS] ERROR: Error message here
#[YYYY-MM-DD HH:MM:SS] INFO: Some informational message
#...
#The script should:

#Accept a log file as its first argument.
#Count and print the number of ERROR and INFO messages.
#Extract all ERROR messages and save them to a new file named "errors.log".
#Hints:

#You can use grep to search for specific lines in the log file.
#wc can be useful to count lines.


logs="$1"

if [[ -z "$logs" || ! -f "$logs" ]]; then
    echo "Error: You must provide a log file as the first argument" >&2
    exit 1
fi

error_count=$(grep ERROR: "$logs" | wc -l | xargs)
info_count=$(grep INFO: "$logs" | wc -l | xargs)

echo "There $( [[ $error_count -eq 1 ]] && echo "is" || echo "are" ) ${error_count##0} error(s)."
echo "There $( [[ $info_count -eq 1 ]] && echo "is" || echo "are" ) ${info_count##0} log(s)."

grep ERROR: "$logs" > challenge11_errors.log

echo "Done"
