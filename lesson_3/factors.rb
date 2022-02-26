def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number != 0 && number % divisor == 0
    divisor -= 1
  end
  factors
end

puts "Please input factor"
answer = gets.chomp.to_i

p results = factors(answer)