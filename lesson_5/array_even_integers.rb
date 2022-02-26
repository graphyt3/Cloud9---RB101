arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_array = []

new_array = arr.select do |sub_hash|
              sub_hash.all? do |key, sub_array|
                sub_array.all? do |number|
                  number.even?
                end
              end
            end
p new_array