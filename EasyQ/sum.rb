
def sum(integer)
  sum_total = 0
  new_array = integer.to_s.chars
  new_array.each do |number|
    sum_total += number.to_i
  end
  sum_total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45