def multiply_all_pairs(arr1, arr2)
  final_array = []
  arr1.each do |arr1_num|
    arr2.each do |arr2_num|
      final_array << (arr2_num * arr1_num)
    end
  end
  final_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]