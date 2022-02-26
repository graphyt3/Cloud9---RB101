def stringy(number)
 count = 0
 string = ''
 while count < number 
  if count.even?
    string = string + '1'
  else 
    string = string + '0'  
  end
  count += 1
 end
 string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'