# (P) Input: Array of words strings, Output: Array of words strings
# Data Structure: 
# Copy array into False_list
# pop off one word into current_anagram to compare the rest of the array
# if anagram match found, add to current_anagram
# if word is not a match, 



words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
def anagrams(list)
  while !list.empty?
     current_anagram = []
     current_anagram << list.pop
     list.each do |word|
        if word.chars.sort == current_anagram[0].chars.sort
          current_anagram << word
        else
          false_list << word
        end
     end
     p current_anagram if current_anagram.count > 1
  end
end

#anagrams(words)

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end