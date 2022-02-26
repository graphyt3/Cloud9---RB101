def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
  return lengths
end

puts string_lengths("hi my name is")