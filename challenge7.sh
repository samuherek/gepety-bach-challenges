#Challenge 7: Reading Files
#Objective: Write a bash script that does the following:

#Accepts a filename as an argument.
#Reads the file line by line.
#Prints each line along with its line number.
#For instance, if the file contains:

#code
#apple
#banana
#cherry
#The script should output:

#code
#1: apple
#2: banana
#3: cherry
#Hint: You might find the while loop in combination with the read command useful. Additionally, consider using a variable to keep track of line numbers.



idx=0
while read -r line; do
    ((idx++))
    printf '%d: %s\n' $idx "$line"
done < $1
