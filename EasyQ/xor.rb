def xor?(argument1, argument2)
  if argument1 == true && argument2 == false
    return true
  elsif argument1 == false && argument2 == true
    return true
  else
    return false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false