arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |sub_array|
            sub_array.sort do |a, b|
              b <=> a
            end
          end

puts new_arr
