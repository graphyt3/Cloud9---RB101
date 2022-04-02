def swap_name(name)
  name_array = name.split
  "#{name_array.last}, #{name_array.first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'