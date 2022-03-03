
def retirement_age
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  retire_age = gets.chomp.to_i
  
  retirement_goal = retire_age - age
  year = Time.now.year
  retirement_year = year + retirement_goal
  puts "It is #{year}. You will retire in #{retirement_year}"
  puts "You only have #{retirement_goal} years of work to go!"
  
end

retirement_age