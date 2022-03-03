def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64

def power_to_the_n(number, power)
  count = 0
  total = 1
  while count < power
    total = multiply(total, number)
    count += 1
  end
  return total
end

p power_to_the_n(7, 2) == 49
p power_to_the_n(7, 3) == 343
p power_to_the_n(5, 3) == 125
p power_to_the_n(5, 4) == 625
p power_to_the_n(5, 5) == 3125
p power_to_the_n(4, 7) == 16384