def repeater(string)
  result = ''
  array = string.chars
  array.each { |char| result << char * 2}
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  array = string.chars
  array.each do |char| 
    if CONSONANTS.include?(char.downcase)
      result << char * 2
    else
      result << char
    end  
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""