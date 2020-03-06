# define method, takes one argument, positive integer
# separate the digits into an array
# add those numbers together
# return the new number

def sum(number)
  number.digits.sum
end

puts sum(99999)