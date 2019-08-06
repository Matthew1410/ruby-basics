print "Enter the first number:"
first_number = gets.chomp.to_i
print "Enter the second number:"
second_number = gets.chomp.to_i

puts "The sum of the numbers is: #{first_number + second_number}"

if first_number + second_number > 100
    puts "The sum is greater than 100"
elsif first_number + second_number < 100
    puts "The sum is less than 100"
else
    puts "The sum is equal to 100"
end
