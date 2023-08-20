#Challenge 4: Conditional Statements
#Objective: Write a bash script that does the following:

#Ask the user for their age.
#If the age is less than 18, print "You are a minor."
#If the age is 18 or more, print "You are an adult."
#Hint: Use an if statement in bash for the conditional checks.


echo "What is your age?"
read age
if [[ $age -lt 18 ]]; then
    echo "You are a minor"
else 
    echo "You are an adult"
fi
