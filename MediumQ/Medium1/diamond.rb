def diamond(number)
  rounds = number/2
  half_counter = 1
  while rounds > 0
    puts (" " * rounds) + ("*" * half_counter) + (" " * rounds)
    half_counter += 2
    rounds -= 1
  end
  puts "*" * number
  rounds = 1
  half_counter = number - 2
  while rounds <= (number/2)
    puts (" " * rounds) + ("*" * half_counter) + (" " * rounds)
    rounds += 1
    half_counter -= 2
  end
end

diamond(3)

diamond(9)
