# take an integer as argument (num)
# initiate empty array (result)
# 1 up to (num), add num to result
# return result

def sequence(num)
  result = []
  1.upto(num) {|n| result << n}
  result
end

p sequence(5)
p sequence(3)
p sequence(1)

# GIVEN SOLUTION

def sequence(number)
  (1..number).to_a
end

#FURTHER EXPLORATION
def sequence(num)
  if num < 1
    1.downto(num).to_a
  else
    1.upto(num).to_a
  end
end

p sequence(-17)