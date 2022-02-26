#first print and then ask user for two separate inputs for numbers
#perform operation of 2 numbers (adding)
#output the result

#START
#GET input from user for 2 numbers
#SET new variable the product of the 2 numbers with addition
#print output of the variable 

#given an array of strings
#iterate over each element of the array
#during iteration add each element to a new variable
#once finished output the variable

#START
GIVEN collection of strings called "strings"
SET counter = 0
SET number = number of elements in strings

WHILE counter < number
  SET final_string = final_string + value within strings collection at space "counter"
  counter = counter + 1
END
PRINT final_string

#given a set of array of integers
#iterate over each number in the array
#counting from 0 -> number of elements in array
#if even -> add to new array
#if odd -> next iteration!
#print result

START
GIVEN set of array of integers
SET counter = 0
WHILE counter < number of elements
IF counter is even
  SET new_array = new_array + value within numbers collection at space even "counter"
IF counter is odd
  Skip to next iteration
END
PRINT new_array


#given a character 'x'
#given a string 'abxkjxkefxeflx'
#returns the INDEX of the 3rd occurance of character 'x' which is 9!

#given a characer 'x'
#given a string 'abxkjxkefxeflx'
#go over each character 1 by 1
#if character is equal to character 'x' add to a counter previously set to 0 by 1
#once the counter is equal to 3, print out the INDEX of that value
#At end of loop, RETURN NIL

GIVEN character 'x'
GIVEN a string 'abxkjxkefxeflx'
SET counter = 0
SET stringcounter = 0

WHILE stringcounter < number of characters
  IF string character at stringcounter == 'x'
    counter = counter + 1
    
  ELSE
    stringcounter = stringcounter + 1
    NEXT iteration
  END
  IF counter == 3
    BREAK
  END
  stringcounter = stringcounter + 1
END
PRINT value at stringcounter
    
    
#given 2 arrays
#while iterating both at the same time
#add to new array from first array, followed by the second array
#then print out new array

START
GIVEN array1 and array2
SET counter = 0

WHILE counter < number of elements in arrays
  SET new_array <- element of first array at counter value
  SET new_array <- element of second array at counter value
  counter = counter + 1
END
PRINT new_array
  