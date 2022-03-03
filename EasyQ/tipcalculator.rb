def tip_calculator
  puts "What is the bill?"
  bill = gets.chomp.to_f
  puts "What is the tip percentage?"
  tip_percentage = gets.chomp.to_f
  
  tip = (bill * (tip_percentage/100)).round(2)
  total =  tip + bill
  
  puts "The tip is: $#{sprintf("%.2f", tip)}"
  puts "The total is: $#{sprintf("%.2f", total)}"
end

tip_calculator
