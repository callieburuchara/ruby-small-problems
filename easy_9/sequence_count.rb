#accept two numbers: num that will become a range, and a starting point
# (range, starter)
# initialize empty array, result
# if range <= 0, return result as empty
# otherwise
# 1.upto(range)|num| multiply num by range
# and add that number to result

def sequence(range, starter)
  result = []
  1.upto(range) {|n| result << n * starter}
  result
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 100000)

# GIVEN SOLUTION
def sequence(count, first)
  (1..count).map { |value| value * first }
end