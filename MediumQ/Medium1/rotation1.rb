def rotate_array(array)
  temporary_holder = array[0]
  new_array = []
  counter = 1
  while counter < array.size
    new_array << array[counter]
    counter += 1
  end
  new_array << temporary_holder
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p x.object_id
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x.object_id
p x == [1, 2, 3, 4]                 # => true