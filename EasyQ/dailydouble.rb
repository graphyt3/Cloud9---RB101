def crunch(string)
  words = string.split
  result = words.map do |word|
            cleaned_word = []
            current_letter = []
            characters = word.chars
            characters.each do |letter|
              if current_letter.last == letter
                current_letter << letter
              elsif current_letter.empty?
                current_letter << letter
              else
                cleaned_word << current_letter.last
                current_letter << letter
              end
            end
            cleaned_word << current_letter.last
            cleaned_word.join
          end
  result.join(' ')
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''