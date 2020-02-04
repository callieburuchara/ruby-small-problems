# write a method that takes one Integer as an argument
# this argument can be positive, negative, or zero
# evaluate if number is odd or even
# return true if odd, return false if even
# I can assume the argument is a valid integer value

def is_odd?(num)
  num % 2 != 0
end 

puts is_odd?(2)
puts is_odd?(3)
puts is_odd?(32)
puts is_odd?(57)

# rewrite using Integer#remainder

def is_odd?(num)
  num.remainder(2) != 0
end 

puts is_odd?(3)
puts is_odd?(2)
puts is_odd?(57)
puts is_odd?(32)