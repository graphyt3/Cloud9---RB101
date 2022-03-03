def prompt(msg)
  puts("==>#{msg}")
end

prompt('Enter the first number:')
first = gets.chomp.to_f
prompt('Enter the second number:')
second = gets.chomp.to_f

addition = first + second
subtraction = first - second
product = first * second
quotient= first / second
remainder = first % second
power = first ** second
prompt("#{first} + #{second} = #{addition}")
prompt("#{first} - #{second} = #{subtraction}")
prompt("#{first} * #{second} = #{product}")
prompt("#{first} / #{second} = #{quotient}")
prompt("#{first} % #{second} = #{remainder}")
prompt("#{first} ** #{second} = #{power}")