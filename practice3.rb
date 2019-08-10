print "Please enter your name: "
name = gets.chomp
print "Type UP for uppercase and DOWN for lowercase: "
option = gets.chomp.downcase

if option == "up"
  puts name.upcase
elsif option == "down"
  puts name.downcase
else
  puts "Wrong input!"
end

puts "There are #{name.length} characters in your name"
