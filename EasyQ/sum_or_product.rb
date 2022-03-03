puts "please enter an integer greater than 0:"
integer = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
equation = gets.chomp
count = 1
sum = 0
product = 1

if equation == 's'
    while count < (integer + 1)
      sum += count
      count += 1
    end
    puts "The sum of the integers between 1 and #{integer} is #{sum}"
elsif equation == 'p'
  product = (1..integer).inject(:*) 
  puts "The product of the integers between 1 and #{integer} is #{product}"
end