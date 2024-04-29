#! /bin/bash

# Basic math operators
#Operator  Operation
#+, -, \*, / addition , subtraction, multiplication, division
# var++     increase the value in var by 1
# var --    decrease the value in var by 1
# %         modulus division (return the remainder after division)

# There are several ways to perfom arithnmetic

#1. Use let built in function. It follows the format 
# let<arithmetic expression>
#The first part of the expression is generally a variable 
#which the result is saved into.
let a=5+4
echo $a

let "a = 5 + 4"
echo $a

let a++
echo $addition

let "a = 4 * 5"
echo $a

let "a = $1 + 30"
echo $a

#2. Use expr built in function 
# expr is similar to let  except instead of saving the result 
# to a variable it displays to the terminal
#Let follows the format:
#expr item1 operator item2
expr 5 + 4
expr 11 % 2

expr 5 \* $1

#You must have spaces between the items in the expression
#expr 5+4

#3. Use double parenthesis following the format:
# $ ((expression))
a=$(( 4 + 5 ))
echo $a

a=$((3+5))
echo $a

b=$(( a + 3 ))

(( b++ ))
echo $b

(( b += 3))
echo $b

a=$(( 4 * 5 ))
echo $a

# If you want to get the length of a variable  (how many characters),
#you can do the following :
# ${#variable}

a='Hello World'
echo ${#a}

b=4953
echo ${#b}