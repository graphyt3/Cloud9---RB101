def word_sizes(string)
  word_counter = {}
  string.split.each do |word|
    cleaned_word = word.downcase.gsub(/[^a-z]/, '')
    current_size = cleaned_word.size
    if word_counter.key?(current_size) == false
      word_counter[current_size] = 1
    else
      word_counter[current_size] += 1
    end
  end
  word_counter
end

#p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
#p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
#p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
#p word_sizes('') == {}

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}