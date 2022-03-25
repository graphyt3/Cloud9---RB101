def print_in_box(sentence)
  string_length = sentence.length
  p '+' + ('-' * (string_length + 2)) + '+'
  p '|' + (' ' * (string_length + 2)) + '|'
  p "| #{sentence} |"
  p '|' + (' ' * (string_length + 2)) + '|'
  p '+' + ('-' * (string_length + 2)) + '+'
end

#print_in_box('hello')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+