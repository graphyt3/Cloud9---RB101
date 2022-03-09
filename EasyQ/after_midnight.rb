def time_of_day(time_integer)
  time_24 = time_integer%1440 # checking for 24 hours and looking for remainders
  time_array = time_24.divmod(60) # index 0 = hour, index 1 = minutes
  "#{sprintf("%.2d", time_array[0])}" + ":" + "#{sprintf("%.2d", time_array[1])}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(1440)