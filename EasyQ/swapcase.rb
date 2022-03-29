LOWER_CASE = ('a'..'z')
UPPER_CASE = ('A'..'Z')

def swapcase(string)
  new_string = ''
  string.chars.each do |char|
    if UPPER_CASE.include?(char)
      new_string << char.downcase
    elsif LOWER_CASE.include?(char)
      new_string << char.upcase
    else
      new_string << char
    end
  end
  new_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'