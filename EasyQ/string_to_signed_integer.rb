require 'pry'
DIGITS = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9, '+'=>"+", '-'=>"-"}

def string_to_integer(str)
  negatitve_flag = 'off'
  new_array = []
  str_array = str.split(//)
  str_array.each do |key| 
    new_array << DIGITS[key]
  end
  
  total = 0
  
  new_array.each_with_index do |integer, index|
    count = 1
    while count < (new_array.size - index)
      integer = integer * 10
      count += 1
    end
    total += integer
  end
  
  if negative_flag == 'on'
    total = total - (2*total)    #converts back to negative
  end
  
  total
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100