#! /bin/bash

# If you want to take input from the user, you use
# the read command. This command takes the input and 
#saves it into a variable 

#If you want to output something to the terminal,
#you use the echo command

#Display a prompt to the user 
echo Hello, who am I talking to?
#Read user input into a variable 
read varname
#Display a message to the user that includes the 
#value stored in the variable
echo It\'s nice to meet you $varname

# You can alter the behavior of read with a variety of 
# commmand line options 
#Two commonly used options are -p whcih allows you 
#to specify a prompt and -s which makes the input 
#silent
#This can make it easy to ask for a username and 
#password combonation
read -p 'Username: ' username
read -sp 'Password: ' password
echo
echo Thank you $username we now have your login details

#Display a prompt to user 
echo Enter filename

#read user input into variable
read file

#If the file exists 
if [ -e $file]
then
    # Display the file's name
    echo $file exist in the directory
    #Output the contents of the file.
    cat $file
#If the file does not exist
else
    #Create a file
    cat > $file
    #Display message
    echo File created
fi
