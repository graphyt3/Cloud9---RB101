def buy_fruit(grocery_list)
  final_list = []
  grocery_list.each do |fruit_group|
    fruit_group[1].times do
      final_list << fruit_group[0]
    end
  end
  final_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]