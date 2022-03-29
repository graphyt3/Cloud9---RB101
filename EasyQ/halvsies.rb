def halvsies(array)
  new_array = [[], []]
  counter = 0
  halfway_point = array.size.even? ? (array.size/2) : (array.size/2) + 1
  #if array.size.even?
  #  stop = array.size/2
  #else
  #  stop = (array.size/2) + 1
  #end
  array.each_with_index do |element, index|
    if index < halfway_point
      new_array[0] << element
    else
      new_array[1] << element
    end
    counter += 1
  end
  new_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]