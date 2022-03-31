def penultimate(sentence)
  words = sentence.split
  words[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'