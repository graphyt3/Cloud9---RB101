def time_of_day(time_integer)
  time_24 = time_integer%1440 # checking for 24 hours and looking for remainders
  time_array = time_24.divmod(60) # index 0 = hour, index 1 = minutes
  "#{sprintf("%.2d", time_array[0])}" + ":" + "#{sprintf("%.2d", time_array[1])}"
end

def after_midnight(time_str)
  time_arr = time_str.split(':')
  final_time = (time_arr[0].to_i*60) + time_arr[1].to_i
  if final_time == 0 || final_time == 1440 # final_time % 1440 (also accomplishes same thing!)
    final_time = 0
  else
    final_time
  end
end

def before_midnight(time_str)
  result = after_midnight(time_str)
  if result == 0
    result
  else
    result = 1440 - result
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(1440)

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0