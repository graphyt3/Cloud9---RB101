def leading_substrings(string)
  counter = 1
  final_array = []
  while counter <= string.length
    final_array << string[0, counter]
    counter += 1
  end
  final_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

def substrings(string)
  result = []
  length_counter = 0
  string.chars.each_with_index do |substring, index|
    counter = 1
    while counter <= (string.length - length_counter)
    result << string[index, counter]
    counter += 1
    end
    length_counter += 1
    #result << leading_substrings(substring)
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]