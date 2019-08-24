def military_to_12_hour_time(military_time)
  raise ArgumentError if military_time >= 2400 || military_time.negative?

  hours = military_time / 100
  minutes = military_time % 100
  raise ArgumentError if minutes >= 60

  period = (hours / 12).zero? ? "AM" : "PM"
  hours = case hours
          when 0, 12 then 12
          when 1..11 then hours
          when 12..23 then hours % 12
          end
  format("%02d:%02d %s", hours, minutes, period)
end

print "24 hour format time: "
begin
  normal_time = military_to_12_hour_time(Integer(gets, 10))
  puts "The 12 hour format is: #{normal_time}"
rescue ArgumentError
  puts "The time you entered is invalid."
end
