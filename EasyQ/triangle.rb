def triangle(number_total)
  star_counter = 1 if number_total != nil
  space_counter = number_total - 1
  number_total.times do |_|
    p (" " * space_counter) + ("*" * star_counter)
    star_counter +=1
    space_counter -= 1
  end
end

triangle(5)
triangle(9)
