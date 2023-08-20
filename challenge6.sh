#Challenge 6: Script Arguments
#Objective: Write a bash script that accepts an argument (a name) and prints "Hello, [name]!". If no argument is provided, it should print "Hello, stranger!".

#Hint: In bash scripts, $1 refers to the first argument, $2 to the second, and so on. $0 refers to the script's name itself.


if [[ $1 ]]; then
    echo "Hello, ${1}!"
else 
    echo "Hello, stranger!" 
fi
