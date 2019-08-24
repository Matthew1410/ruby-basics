def military_to_12_hour_time(military_time)
  return unless military_time < 2400 && military_time.positive?

  hours = military_time / 100
  minutes = military_time % 100
  "#{hours}:#{minutes}"
end

print "24 hour format time: "
normal_time = military_to_12_hour_time(gets.to_i)
if normal_time
  puts "The 12 hour format is: #{normal_time}"
else
  puts "The time you entered is invalid."
end
