def reverse!(array)
  total_iterations = (array.size)/2
  current_index = 0
  reverse_index = -1
  while current_index < total_iterations
    temp_holder = array[current_index]
    array[current_index] = array[reverse_index]
    array[reverse_index] = temp_holder
    current_index += 1
    reverse_index -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true