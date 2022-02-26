statement = "The Flintstones Rock"
results = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  current_letter_count = statement.count(letter)
  if current_letter_count > 0
    results[letter] = current_letter_count
  end
end

puts results