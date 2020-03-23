# input: 3 integers (first, second, third)
# output: symbol: right, acute, obtuse, or invalid

# valid: all angles == 180 exactly && no angles can be 0 
# right: one num == 90
# acute: all num < 90
# obtuse: one angle > 90

def triangle(first, second, third)
  all_angles = [first, second, third]

  if all_angles.sum != 180 || all_angles.include?(0)
    :invalid
  elsif all_angles.include?(90)
    :right
  elsif all_angles.any? {|n| n > 90}
    :obtuse
  elsif all_angles.all? {|n| n < 90} # could have used else, but wanted to practice the validation
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid