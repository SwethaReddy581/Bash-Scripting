#!/bin/bash

echo "Simple Calculator"

echo "Enter first number"
read num1

echo "Enter Second number"
read num2

echo "Choose an operation (+, -, *, /):"
read output
case $output in
	+)
		echo "Result: $((num1+num2))"
		;;

        -)
		echo "Result: $((num1-num2))"
		;;
	
       \*)
		echo "Result: $((num1*num2))"
		;;

	/)
		if [ "$num2" -eq 0 ]
	then 
		echo "Error: Division by zero is not allowed"
	else
		echo "Result:$((num1/num2))"
		fi
		;;
	*)
		echo "Invalid opertor!"
		;;
esac

	

