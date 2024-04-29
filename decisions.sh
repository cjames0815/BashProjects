#! /bin/bash

# Basic comparision operators
#Operator  Operation
# -gt   >
# -lt   <
# -ge   >=
# -le   <=
# -eq   ==
# -ne   !=

# This basic if decision follows the format:
# if [ condition ]
# then
# <commands>
# fi

#Check if the first command line arguement is greater than 100.
if [ $1 -gt 100 ]
then
    # Display message
    echo Hey that\'s a large number
    #Display present working directory
    pwd
fi
#Display date to terminal.
date

#Nested if decision
#Check if the first command line arguement is greater than 100.
if [ $1 -gt 100 ]
then
    # Display message
    echo Hey that\'s a large number
    #Check if the first command line argument is an even number
    #Must use double parenthesis if you want to check the result 
    #of a mathmatical expression.
    if (( $1 % 2 == 0 ))
    then
        # Display message 
        echo And is also an even number
    fi
fi

# The if-else decision 
# if [ condition ]
# then
# <commands>
#else
# <commands>
# fi

#Check if there are two command line arguments
if [ $# -eq 2 ]
then   
 #Display line of code in file along with line numbers 
    nl $2
else
    #Display line of code in text.txt along with line numbers
    nl ../Bash-Projects/text.txt
fi


# The if-else decision 
# if [ condition ]
# then
# <commands>
#else
#elif [ condition ]
# then
# <commands>
# else
# <commands>
# fi

#Prompt the user for information and store it in 
# variables.
read -p 'Enter Age:' age
read -p 'Did you receive an invitation (yes/no): ' invitation

#Check if the input age is greater than 21
if [ $age -ge 21 ]
then   
    echo You are old enough to go to the party
#Checking if the input invitation is equal to yes
elif [ $invitation == 'yes' ]
then    
    echo You have been invited to go to the party.
else 
    echo you may not go to the party
fi

# Basic comparision operators
#Operator  Operation
#&&         and
# ||        or

# Check if the file provided as the second command line argument
#is executable AND has a size greater than zero
if [ -x $2 ] && [ -s$2 ]
then
    echo This file is useful
fi

# Prompt user for information and store the input information
# into a variable
read -p 'Username: ' username

# Check if username is bob Or andy
if [ $username == 'bob' ] ||  [ $username == 'andy' ]
then
    #List file name in current directory along with file details
    ls -l
else    
    #list file names only 
    ls
fi