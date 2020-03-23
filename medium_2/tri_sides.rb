# input: 3 integers 
# output: one of four symbols: equilateral, isosceles, scalene, invalid

# rules
# equilateral: all 3 sides are equal length
# isosceles: 2 sides are equal, third is different
# scalene: all 3 sides are difference
# valid: sum of 2 shortest sides > longest side, all sides > 0

# hash in order to use symbols
# if/else statement

# accept three integers as arg. (first, second, third)
# all_num = []
# all_num << first << second << third
# all_num.sort
# VALID TRIANGLE?
# return invalid if all_num.any? less than zero ||
# --> if all_num[0] + all_num[1] <= all_num[2]

# 
# TRIANGLE = {
#   all_same: :equilateral,
#   two_same: :isosceles,
#   all_different: :scalene,
#   not_tri: :invalid
# }

def triangle(first, second, third)
  all_num = [first, second, third]
  all_num.sort!
  
  if all_num.any? {|n| n < 0} ||
    all_num[0] + all_num[1] <= all_num[2] 
    :invalid
  elsif first == second && second == third
    :equilateral
  elsif first == second || second == third || first == third
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid