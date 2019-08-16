print "Type H to convert military time to 12 hour format. Otherwise, type M: "
choose = gets.chomp.upcase

# Convert 12 hour time to Military time
if choose == "M"
print "Enter a number of hour: "
time_hour = gets.chomp.to_i
if time_hour > 12
  puts "INVALID INPUT!"
else
print "Enter a number of minutes: "
time_minutes = gets.chomp.to_i
print "Type AM or PM: "
time_frame = gets.chomp.upcase


if time_frame == "AM"
  complete_time = time_hour.to_s + ":" + time_minutes.to_s + " " + time_frame
  puts "The time is: " + complete_time
elsif time_frame == "PM"
  time_hour += 12
  complete_time = time_hour.to_s + ":" + time_minutes.to_s + " " + time_frame
end
puts "The Military time is: #{complete_time}"

end

# Convert military time to 12 hour format

elsif choose == "H"

print "Enter a number of hour: "
time_hour = gets.chomp.to_i
print "Enter a number of minutes: "
time_minutes = gets.chomp.to_i
print "Type AM or PM: "
time_frame = gets.chomp.upcase

if time_frame == "AM"
  complete_time = time_hour.to_s + ":" + time_minutes.to_s + " " + time_frame
  puts "The time is: " + complete_time
elsif time_frame == "PM"
  time_hour %= 10
  time_hour -= 2
end
complete_time = time_hour.to_s + ":" + time_minutes.to_s + " " + time_frame

puts "The Military time is: #{complete_time}"

end
