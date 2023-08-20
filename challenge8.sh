#Challenge 8: Functions and Return Values
#Objective: Write a bash script that does the following:

#Defines a function named square which takes a number as an argument and returns its square.
#The main script should prompt the user for a number.
#It should then call the square function and print "The square of [number] is [result]."
#Hint: In bash, you can't truly "return" a value from a function like in other languages. Instead, you often "echo" the result and capture it when calling the function.

function square() {
    local num=$1
    echo $(( num * num))
}


echo "What numver would you like to square?"
read num
result=$(square $num)
echo "The square of ${num} is ${result}."
 
