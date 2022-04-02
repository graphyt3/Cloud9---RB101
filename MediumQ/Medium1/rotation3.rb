def rotate_array(array)
  temporary_holder = array[0]
  new_array = []
  counter = 1
  while counter < array.size
    new_array << array[counter]
    counter += 1
  end
  new_array << temporary_holder
end

def rotate_rightmost_digits(original_number, digits)
  number_array = original_number.to_s.chars
  rotation_needed = number_array[(-1 * digits), digits]
  (number_array[0, (number_array.size-digits)] + rotate_array(rotation_needed)).join.to_i
end

def max_rotation(number)
  rotate_rightmost_digits(number, number.digits)
end

p max_rotation(735291) #== 321579
#max_rotation(3) == 3
#max_rotation(35) == 53
#max_rotation(105) == 15 # the leading zero gets dropped
#max_rotation(8_703_529_146) == 7_321_609_845