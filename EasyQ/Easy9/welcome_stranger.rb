def greetings(name_array, demo_hash)
  puts "Hello, #{name_array.join(' ')}! Nice to have a #{demo_hash[:title]} #{demo_hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.