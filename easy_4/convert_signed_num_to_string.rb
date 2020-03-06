require "pry"
require "pry-byebug"

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ""
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder]) # SMART! Remainder here matches
    break if number == 0    # the index position of the number in DIGITS array
  end
  result
  end

  def signed_integer_to_string(number)
    case number <=> 0
    when -1 then "-#{integer_to_string(-number)}"
    when +1 then "+#{integer_to_string(number)}"
    else         integer_to_string(number)
    end
  end

  p integer_to_string(4321)