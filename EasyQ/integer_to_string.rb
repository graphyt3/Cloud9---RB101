DIGITS = {1=>'1', 2=>'2', 3=>'3', 4=>'4', 5=>'5', 6=>'6', 7=>'7', 8=>'8', 9=>'9', 0=>'0'}

def integer_to_string(int)
  integer_array = int.digits.reverse # putting digits into an array of integers
  string_array = integer_array.map do |element|  #converting to strings
                   DIGITS[element]
                 end
  string = ""
  string_array.each do |index|         # concatenates the strings together. could alos just use string_array.join to do same thing!
    string = string + index
  end
  string
end

def signed_integer_to_string(number)
  if number < 0    #negative number?
     "-" + integer_to_string(-number)
  elsif number == 0
    integer_to_string(number)      # can also use RETURN '0'
  else
     "+" + integer_to_string(number)  
  end
end

#p integer_to_string(4321) == '4321'
#p integer_to_string(0) == '0'
#p integer_to_string(5000) == '5000'

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'