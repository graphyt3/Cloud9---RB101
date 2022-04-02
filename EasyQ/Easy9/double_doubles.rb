def twice(number)
  if number.to_s.length.even?
    halfway = number.to_s.length/2
    first_half = number.to_s[0, halfway]
    second_half = number.to_s[halfway, halfway]
    if first_half == second_half
      number
    else
      number * 2
    end
  else
    number * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10