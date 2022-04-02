def fizzbuzz(starting_num, ending_num)
  result = []
  (starting_num..ending_num).each do |num|
    result << fizzbuzz_calculation(num)
  end
  puts result.join(', ')
end

def fizzbuzz_calculation(number)
  if (number%3) == 0 && (number%5) == 0
    "FizzBuzz"
  elsif (number%5) == 0 
    "Buzz"
  elsif (number%3) == 0
    "Fizz"
  else
    number
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz