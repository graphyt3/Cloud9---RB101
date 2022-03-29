def interleave(array1, array2)
  new_array = []
  count = 0
  while count < array1.size
    new_array << array1[count]
    new_array << array2[count]
    count += 1
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']