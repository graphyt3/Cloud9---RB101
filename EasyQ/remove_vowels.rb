def remove_vowels(words)
  words.map do |word|
    result = []
    letters = word.chars
    letters.each do |letter|
      if ('aeiou').include?(letter.downcase)
        next
      else
        result << letter
      end
    end
    result.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']