def normal_military(convert_time)
  return unless convert_time < 2400 && convert_time.positive?

  normal_time = to_normal_thousand_hour(convert_time)
  convert_time %= 1000
  normal_time += to_normal_hundred_hour(convert_time)
  convert_time %= 100
  normal_time += to_normal_tens_hour(convert_time)
  convert_time %= 10
  normal_time + to_normal_one_hour(convert_time)
end

def to_normal_thousand_hour(convert_time)
  if convert_time < 1300
    thousand_hour = convert_time / 1000
    case thousand_hour
    when 1 then "1"
    when 2 then "2"
    end
  elsif convert_time.zero?
    thousand_hour = convert_time / 1000
    case thousand_hour
    when 0 then "1"
    end

  elsif convert_time >= 1300
    thousand_hour = convert_time / 1000
    case thousand_hour
    when 1 then " "
    end
  end
end

def to_normal_hundred_hour(convert_time)
  if convert_time.zero?
    hundred_hour = convert_time / 100
    case hundred_hour
    when 0 then "2"
    end
  elsif convert_time >= 1000 && convert_time < 1300
    hundred_hour = convert_time / 100
    case hundred_hour
    when 0 then "0"
    when 1 then "1"
    when 2 then "2"
    end
  elsif convert_time > 1200 && convert_time < 2000
    hundred_hour = convert_time / 100
    case hundred_hour
    when 3 then "1"
    when 4 then "2"
    when 5 then "3"
    when 6 then "4"
    when 7 then "5"
    when 8 then "6"
    end
  else
    case hundred_hour
    when 0 then "8"
    when 1 then "9"
    when 2 then "0"
    when 3 then "1"
    end
  end
end

def to_normal_tens_hour(convert_time)
  tens_hour = convert_time / 10
  case tens_hour
  when 0 then "0"
  when 1 then "1"
  when 2 then "2"
  when 3 then "3"
  when 4 then "4"
  when 5 then "5"
  end
end

def to_normal_one_hour(convert_time)
  case convert_time
  when 0 then "0"
  when 1 then "1"
  when 2 then "2"
  when 3 then "3"
  when 4 then "4"
  when 5 then "5"
  when 6 then "6"
  when 7 then "7"
  when 8 then "8"
  when 9 then "9"
  end
end

print "24 hour format time: "
normal_time = normal_military(gets.to_i)
if normal_time
  puts "The 12 hour format is: #{normal_time} "
else
  puts "The time you input is invalid."
end
