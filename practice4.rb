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

hundreds = num / 100
roman_hundreds = case hundreds
when 0..3 then "C" * hundreds
when 4 then "CD"
when 5 then "D"
when 6 then "DC"
when 7 then "DCC"
when 8 then "DCCC"
when 9 then "CM"
end

num %= 100

tens = num / 10
roman_tens = case tens
when 0..3 then "X" * tens
when 4 then "XL"
when 5 then "L"
when 6 then "XL"
when 7 then "XLL"
when 8 then "XLLL"
when 9 then "XC"
end

num %=10

ones = num
roman_ones = case ones
when 0..3 then "I" * ones
when 4 then "IV"
when 5 then "V"
when 6 then "VI"
when 7 then "VII"
when 8 then "VIII"
when 9 then "IX"
end

puts "Converted to: #{roman_thousand.to_s + roman_hundreds.to_s + roman_tens.to_s + roman_ones.to_s}"
