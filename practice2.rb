puts "Enter the first number:"
first_number = gets.chomp.to_i
puts "Enter the second number:"
second_number = gets.chomp.to_i
sum = first_number + second_number
puts "The sum of the numbers is:" + sum.to_s

if sum > 100
    puts "The sum is greater than 100"
elsif sum < 100
    puts "The sum is less than 100"
else
    puts "The sum is equal to 100"
end
