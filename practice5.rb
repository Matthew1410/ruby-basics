def military_to_12_hour_time(military_time)
  return if military_time >= 2400 && military_time.negative?

  hours = military_time / 100
  minutes = military_time % 100
  hours = case hours
          when 0, 12 then 12
          when 1..11 then hours
          when 12..23 then hours % 12
          end
  "#{hours}:#{minutes}"
end

print "24 hour format time: "
normal_time = military_to_12_hour_time(gets.to_i)
if normal_time
  puts "The 12 hour format is: #{normal_time}"
else
  puts "The time you entered is invalid."
end
