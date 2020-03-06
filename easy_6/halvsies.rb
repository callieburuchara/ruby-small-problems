def halvsies(array)
  array_count = array.count
  if array_count.even?
    first_array, second_array = 
    array.first(array_count/2), array.last(array_count/2)
  else
    first_array, second_array = 
    array.first((array_count/2) + 1), array.last(array_count/2)
  end
end

ex = [1, 2, 3, 4]
halvsies(ex)
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])


#GIVEN SOLUTION
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end