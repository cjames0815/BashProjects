#! /bin/bash

#Functions may be created using two different formats:

#function_name () {
# <commands> 
#}   


#function function_name () {
# <commands> 
#}   

# THe function definition(the actual function itself) must
# appear in the script before any call to the fucntion 

#Simple function 
print_somethings (){
    echo Hello
}
print_something
print_something

#Function that takes an arguement
print_argument (){
    # $l is the argument
    echo Hello $1
}
print_argument Mars
print_argument Jupiter

#Function that returns a value
return_something () {
        return 5
}
return_something
# The $? contains the return value of the previously called function.
ret=$?
echo The previous function has a return value of $ret
