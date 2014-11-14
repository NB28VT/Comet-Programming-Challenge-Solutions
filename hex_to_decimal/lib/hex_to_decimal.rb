def hex_to_decimal(input)
  symbol_hash = {
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'a' => 10,
    'b' => 11,
    'c' => 12,
    'd' => 13,
    'e' => 14,
    'f' => 15
  }

  decoded = []
  digits = input.downcase.split('')

  digits.each do |x|
    decoded << symbol_hash[x]
  end

  multiplied = []
  decoded.reverse.each.with_index { |x, index| multiplied << x * (16**index) }
  total = multiplied.inject { |sum, x| sum + x }
  total
end
