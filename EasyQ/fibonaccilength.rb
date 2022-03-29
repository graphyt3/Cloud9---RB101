#P Input Integer for NUMBER of DIGITS
# Outputs the INDEX for that number with th
#E Examples below, edge cases - negative numbers?
#D Define method
#   Create fibonacci sequence that works, that creates an array of integers
#   for each new number created, evaluate the number of digits of number to the INPUT number of digits desired
#   once found, determine the index within the array of that number (+ 1) because of the first fibonacci number has index 1
#   return index as an integer
#A 
#C


def find_fibonacci_index_by_length(number_of_digits)
  array_of_numbers = [1]
  current_number = 1
  array_of_numbers << current_number
  loop do 
    current_number = array_of_numbers[-2] + array_of_numbers.last
    array_of_numbers << current_number
    array_length = current_number.digits
    break if array_length.size >= number_of_digits
  end
  array_of_numbers.index(current_number) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847