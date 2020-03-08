# take a positive integer as an argument
# convert number to string
# reverse it and turn it back into an integer

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345)
p reversed_number(12000)
p reversed_number(12003)