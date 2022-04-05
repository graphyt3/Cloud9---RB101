def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(original_number, digits)
  number_array = original_number.to_s.chars
  rotation_needed = number_array[(-1 * digits), digits]
  (number_array[0, (number_array.size-digits)] + rotate_array(rotation_needed)).join.to_i
end

def max_rotation(number)
  count = number.to_s.chars.size
  while count > 1
    number = rotate_rightmost_digits(number, count)
    count -= 1
  end
  number
end

p max_rotation(12345)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845