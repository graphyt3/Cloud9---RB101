def multiply_list(arr1, arr2)
  counter = 0
  final_arr = []
  while counter < arr1.size
    final_arr << (arr1[counter] * arr2[counter])
    counter += 1
  end
  final_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]