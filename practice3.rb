print "Please enter your name: "
name = gets.chomp
print "Type UP for uppercase and DOWN for lowercase:"
option = gets.chomp

if option == "UP"
  puts name.upcase
elsif option == "DOWN"
  puts name.downcase
else
  puts "Wrong input!"
end
