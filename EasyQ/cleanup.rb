require 'pry'

def cleanup(string)
  final_array_list = []
  string.split.map do |arr|
    current_string = ''
    current_word = ''
    arr.split('').each do |letter|
      if ('a'..'z').include?(letter)
        if current_string != ''
          current_word += (' ' + letter)
          current_string = ''
        else
          current_word += letter 
        end
      else
        current_string += letter
      end   
    end
    current_word += ' ' if current_string != '' && current_string.size == 1
    final_array_list << current_word if current_word != ''
  end
  final_array_list.join(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("line?")
