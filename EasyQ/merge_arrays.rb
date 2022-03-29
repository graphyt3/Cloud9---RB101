def merge(first_array, second_array)
  (first_array+second_array).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]