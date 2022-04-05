def initialize_light(number_of_lights)
  light_bank_hash = {}
  number_of_lights.times do |count| # creating hash with lights on
    light_bank_hash[count+1] = 'on'
  end
  counter = 2
  while counter <= number_of_lights
    multiplier = counter
    while multiplier <= number_of_lights
      light_bank_hash[multiplier] == 'on' ? light_bank_hash[multiplier] = 'off' : light_bank_hash[multiplier] = 'on'
      multiplier += counter
    end
    counter += 1
  end
  light_bank_hash.select {|key, value| value == 'on'}.keys
end

p initialize_light(5) #== [1, 4]
p initialize_light(10) #== [1, 4, 9]
p initialize_light(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]