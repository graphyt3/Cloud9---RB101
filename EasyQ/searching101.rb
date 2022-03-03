array = []
puts "Enter the 1st number:"
array << gets.chomp.to_i
puts "Enter the 2nd number:"
array << gets.chomp.to_i
puts "Enter the 3rd number:"
array << gets.chomp.to_i
puts "Enter the 4th number:"
array << gets.chomp.to_i
puts "Enter the 5th number:"
array << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if array.include?(last_number)
  puts "The number #{last_number} appears in #{array}."
else 
  puts "The number #{last_number} does not appear in #{array}."
end