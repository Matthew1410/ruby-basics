require "pry"

print "Enter a number: "
num = gets.to_i
unless num < 4000 && num.positive?
  puts "The number you entered is out of range. Input a number from 1-3999"
  return
end

thousands = num / 1000
roman_thousand = "M" * thousands

num %= 1000

puts roman_thousand, num
# hundreds = num / 100
# if hundreds >= 1 && hundreds < 4
#   roman_hundreds = "C" * hundreds
# elsif hundreds == 4
#   roman_hundreds = "CD"
# elsif hundreds == 5
#   roman_hundreds = "D"
# elsif hundreds >= 6 && hundreds < 9
#   hundreds -= 5
#   six_hundred = "C" * hundreds
#   roman_hundreds = "D" + six_hundred
# elsif hundreds == 9
#   roman_hundreds = "CM"
# end

# num %= 100

# #tens

# tens = num / 10
# if tens >= 1 && tens < 4
#   roman_tens = "X" * tens
# elsif tens == 4
#   roman_tens = "XL"
# elsif tens == 5
#   roman_tens = "L"
# elsif tens >= 6 && tens < 9
#   tens -= 5
#   six_tens = "X" * tens
#   roman_tens = "L" + six_tens
# elsif tens == 9
#   roman_tens = "XC"
# end

# num %=10

# #ones

# ones = num
# if ones >= 1 && ones < 4
#   roman_ones = "I" * ones
# elsif ones == 4
#   roman_ones = "IV"
# elsif ones == 5
#   roman_ones = "V"
# elsif ones >= 6 && ones < 9
#   ones -= 5
#   six_ones = "I" * ones
#   roman_ones = "V" + six_ones
# elsif ones == 9
#   roman_hundreds = "IX"
# end

# puts "Converted to: #{roman_thousand.to_s + roman_hundreds.to_s + roman_tens.to_s + roman_ones.to_s}"
