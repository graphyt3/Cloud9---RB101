puts "Please write word or multiple words:"
words = gets.chomp
words_size = words.split.join.size

puts "There are #{words_size} characters in '#{words}'"