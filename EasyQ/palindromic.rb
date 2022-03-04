def palindrome?(word)
  word == word.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

#palindrome?('madam') == true
#palindrome?('Madam') == false          # (case matters)
#palindrome?("madam i'm adam") == false # (all characters matter)
#palindrome?('356653') == true

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false