#! /bin/bash

#1 Create two arrays
item=("Partridge in a Pear Tree","Turtle Dove","French Hen","Calling Bird","Gold Ring","Geese a Laying","Swans a Swimming","Maids a Milking", "Ladies Dancing", "Lords of Leeping", "Piper Piping", "Drummer Drumming")
cost=(15 27 15 14 9 25 5 7 18 14 27 26)




#2 Using Read commmand
read -p 'Input a number between 1 and 12' number

#Displaying error message
if [$number -ge 1 ] && [$number -lt 12 ]
then
    echo Please choose a number in between the range

#4  If the input is in between 1 and 12
#Get the item
if [$number -ge 1 ] && [$number -lt 12 ]
then
    item="${items[$((input - 1))]}"
    cost="${costs[$((input - 1))]}"
    total_cost=$(get_total_cost $((input - 1)))
    echo "Input Number: $input"
    echo "Item: $item"
    echo "Cost: $cost"
    echo "Total Cost: $total_cost"
else
    echo "Input Number is not between 1 and 12"
fi

    
# Computes and returns the total cost of all items 
# starting with the first and continuing up 
# to and including the item at the input number.
get_total_cost () {
    local total=0
    local i=0
    until [ $i -gt $1 ]; do
        total=$((total + ${costs[$i]}))
        ((i++))
    done
    echo $total
}

# You must update this return statement so that
    # it returns the computed total cost.
    return_something () {
        return $total
}
