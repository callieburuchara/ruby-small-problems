STRINGS_INTEGERS = {"1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def string_to_integer(number)
  integers = []
  separate = number.chars
  
  separate.each do |num|
    integers << STRINGS_INTEGERS[num]
  end

  Integer(integers.join, 10) #oops, I wasn't allowed to do this. My bad.

end

p string_to_integer("1234")
p string_to_integer("89273981723084")

# Given solution

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

# The digit computation part looks like this:
# 10 * 0 + 4 -> 4
# 10 * 4 + 3 -> 43
# 10 * 43 + 1 -> 431