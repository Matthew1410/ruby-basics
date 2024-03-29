def sort_name(name)
  name.downcase.chars.sort.join.capitalize
end

def reverse_name(name)
  name.reverse.capitalize
end

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
puts "Reversed, your name is #{reverse_name(name)} "
puts "Sorted by letter, your name is #{sort_name(name)} "

print "Enter some letters: "
some_letters = gets.chomp

if name.include? some_letters
  puts "Your name contains #{some_letters}"
else
  puts "It doesn't contains in your Name."
end
