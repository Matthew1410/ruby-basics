def number_to_roman(num)
  return unless num < 4000 && num.positive?

  roman_numeral = build_roman_thousands(num)
  num %= 1000
  roman_numeral += build_roman_hundreds(num)
  num %= 100
  roman_numeral += build_roman_tens(num)
  num %= 10

  roman_numeral + build_roman_ones(num)
end

def build_roman_thousands(num)
  "M" * (num / 1000)
end

def build_roman_hundreds(num)
  hundreds = num / 100
  case hundreds
  when 0..3 then "C" * hundreds
  when 4 then "CD"
  when 5 then "D"
  when 6 then "DC"
  when 7 then "DCC"
  when 8 then "DCCC"
  when 9 then "CM"
  end
end

def build_roman_tens(num)
  tens = num / 10
  case tens
  when 0..3 then "X" * tens
  when 4 then "XL"
  when 5 then "L"
  when 6 then "XL"
  when 7 then "XLL"
  when 8 then "XLLL"
  when 9 then "XC"
  end
end

def build_roman_ones(num)
  case num
  when 0..3 then "I" * num
  when 4 then "IV"
  when 5 then "V"
  when 6 then "VI"
  when 7 then "VII"
  when 8 then "VIII"
  when 9 then "IX"
  end
end

print "Enter a number: "

roman_numeral = number_to_roman(gets.to_i)
if roman_numeral
  puts "Converted to: #{roman_numeral}"
else
  puts "The number you entered is out of range. Input a number from 1-3999"
end
