def multisum(num)
  multiple_3 = 3
  multiple_5 = 5
  arr = []
  while multiple_3 <= num
    arr << multiple_3
    multiple_3 += 3
  end
  while multiple_5 <= num
    arr << multiple_5
    multiple_5 += 5
  end
  arr.uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168