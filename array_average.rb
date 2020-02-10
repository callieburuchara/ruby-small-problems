# define method, takes 1 argument
# argument = an array containing integers
# add all numbers together
# divide that number by amount of elements in array
# return that number

def average(array)
  added = array.sum
  avg = (added.to_f / array.size.to_f)
  avg
end 

puts average([1,2,3,4,5,6,7])