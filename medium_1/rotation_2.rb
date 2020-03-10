def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

# accept an integer (num) and another num (digit)
# change num to a string, then to chars (array of string numbers)
# then take out the num at negative index digit, and put it at the end
# then join and to_i

def rotate_rightmost_digits(num, digit)
  str = num.to_s.chars
  str << str.delete_at(-digit)
  str.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# GIVEN SOLUTION
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
