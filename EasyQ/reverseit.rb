def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

#puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse'
#puts reverse_sentence('') == ''
#puts reverse_sentence('    ') == '' # Any number of spaces results in ''

def reverse_words(sentence)
  new_arr = []
  sentence.split.each do |word|
    if word.size >= 5
      new_arr << word.reverse
    else
      new_arr << word
    end
  end
  new_arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS