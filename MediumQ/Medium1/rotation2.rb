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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917