def show_multiplicative_average(numbers)
  denominator = numbers.size.to_f
  multiple_total = 1.to_f
  numbers.each do |number|
    multiple_total *= number.to_f
  end
  result = (multiple_total/denominator)
  result = sprintf('%.3f', result)
  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667