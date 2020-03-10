require 'pry'
require 'pry-byebug'

def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# accept a positive integer as argument (num)
# 
# we just need the starting position to move forward by one, each time
# so we should pass num in as number to rotate_rightmost_digits
# use num.to_s.size and start at 1
# use a loop to increase the starting position

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291)
