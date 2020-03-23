# input: integer
# output: another integer (higher than input)

# rules for featured number:
# odd number
# multiple of 7
# digits occur exactly once each


def featured_num?(num)
  num.odd? && num % 7 == 0 && num.to_s.chars == num.to_s.chars.uniq
end

# accept an integer as argument (num)
# counter = num
# until featured_num?(counter)
# increase counter by 1
# once it is true, return counter
# return an error message if counter > 10 digits

def featured(num)
  counter = num + 1
  
  until featured_num?(counter)
    counter += 1
    return "This is not possible" if num >= 9_876_543_210
  end
  counter
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999)