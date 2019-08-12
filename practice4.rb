
print "Enter a number: "
num = gets.to_i

one_thousand = "M"
five_hundred = "D"
one_hundred = "C"
fifty = "L"
ten = "X"
five = "V"
one = "I"

if num > 1000
  thousands = num / 1000
  num %= 1000
  hundreds = num / 100
  num %= 100
  tens = num / 10
  num %= 10
  ones = num / 1

elsif num > 100 && num < 1000

  hundreds = num / 100
  num %= 100
  tens = num / 10
  num %= 10
  ones = num / 1

elsif num > 10 && num < 100

  tens = num / 10
  num %= 10
  ones = num / 1

elsif num > 1 && num < 10
  ones = num / 1
 
else
  puts "You input an invalid number."
end

