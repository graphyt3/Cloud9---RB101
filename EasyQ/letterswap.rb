def swap(string)
  array = string.split.map { |element| element.split('') }
  array.map do |sub_array|
    sub_array[0], sub_array[-1] = sub_array[-1], sub_array[0]   
  end
  array.map { |element| element.join }.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'