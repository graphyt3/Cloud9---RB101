produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_parameter)
  produce_keys = produce_parameter.keys
  counter = 0
  selected_fruit = {}
  
  loop do
    produce_variable = produce_parameter[produce_keys[counter]]
    
    if produce_variable == 'Fruit'
      selected_fruit[produce_keys[counter]] = 'Fruit'
    end
    counter += 1
    break if counter == produce_parameter.size
  end
  return selected_fruit
end

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}