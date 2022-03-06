require 'pry'
DIGITS = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9, '+'=>"+", '-'=>"-"}

def string_to_signed_integer(str)
  negative_flag = 'off'
  new_array = []
  total = 0
  
  str_array = str.split(//)
  str_array.each do |key| 
    new_array << DIGITS[key]
  end
  
  if new_array[0] == '+'
    new_array.shift
  elsif new_array[0] == '-'
    new_array.shift
    negative_flag = 'on'
  end
  
  new_array.each_with_index do |integer, index|
    count = 1
    while count < (new_array.size - index)
      integer = integer * 10
      count += 1
    end
    total += integer
  end
  
  if negative_flag == 'on'
    total = total * -1   #converts back to negative
  end
  total
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100