
print "Enter a number: "
num = gets.to_i

if num > 1
#thousands

if num > 1000
  thousands = num / 1000
  num %= 1000
  thousands = "M" * thousands
end

#hundreds

if num > 100 && num < 500
  hundreds = num / 100
  num %= 100
  hundreds = "C"
end

if num > 500 && num < 1000
  hundreds = num / 100
  num %= 100
  hundreds = "D"
end

#tens

if num > 50 && num < 100
  tens = num / 10
  num %= 10
  tens = "L"
elsif num >= 10 && num <= 30
  tens = num / 10
  tens = "X" * tens
elsif num == 40
  tens = num / 10
  tens = "LX"
elsif num > 40 && num <= 43
  tens = num / 10
  tens = "LX"
end

#ones

if num >= 1 && num <= 3
  ones = num / 1
  ones = "I" * ones
elsif num == 4
  ones = num / 1
  ones = "IV"
elsif num == 5
  ones = num / 1
  ones = "V"
elsif num >= 6 && num <= 8
  ones = num / 1
  num = ones - 5
  ones = "V" + ("I" * num)
elsif num == 9
  ones = num / 1
  ones = "IX"
elsif num > 10 && num <= 13
  ones = num / 1
  ones = "I" * ones
end

puts "Converted to Roman Numerals: #{thousands.to_s + hundreds.to_s + tens.to_s + ones.to_s} "

else
  puts "You input an invalid number."
end
