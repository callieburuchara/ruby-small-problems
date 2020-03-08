# take a string as argument
# use split to turn into array
# array[-2]

def penultimate(str)
  str.split[-2]
end

p penultimate('last word')
p penultimate('Launch School is great!')