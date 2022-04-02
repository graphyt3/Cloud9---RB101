def negative(int)
  case
  when int > 0
    return int * (-1)
  else
    return int
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby