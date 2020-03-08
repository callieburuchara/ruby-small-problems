# accept an integer
# if number is <= 0, return number
# if number is > 0, * -1

def negative(num)
  num <= 0 ? num : num * -1
end

p negative(5)
p negative(-3)
p negative(0)

# GIVEN SOLUTION
def negative(number)
  -number.abs
end