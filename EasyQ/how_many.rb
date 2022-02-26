vehicles = [
  'cAr', 'Car', 'tRuck', 'caR', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  results = {}
  
  arr.each do |element|
    element.downcase!
  end
  
  arr.uniq.each do |element|
    results[element] = arr.count(element)
  end
  
  results.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)