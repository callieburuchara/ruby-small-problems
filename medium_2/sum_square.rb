# input: integer (num)
# output: different integer

# (1..num).sum**2 - (1**2 + 2**2...+ n**2)

# accept integer as argument (num)
# sum_square = *(1..num).to_a.sum**2

# square_sum = (1..num).to_a.reduce(0) {|total, n| total += n**2}

# sum_square - square_sum

def sum_square_difference(num)
  sum_square = (1..num).to_a.sum**2
  square_sum = (1..num).to_a.reduce(0) {|t, n| t += n**2}
  sum_square - square_sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150