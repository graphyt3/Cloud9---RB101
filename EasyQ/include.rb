def include?(array, search_value)
  return_value = false
  array.each do |element|
    return return_value = true if element == search_value
  end
  return_value
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false