def word_cap(sentence)
  new_sentence = sentence.downcase.split
  new_sentence.map do |word|
    word.capitalize
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'