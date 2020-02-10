def oddities(given_array)
  new_array = []
  given_array.each_with_index {|elem, ind| new_array << elem if ind % 2 != 0}
  new_array
end


def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end 

puts oddities([2, 3, 4, 5, 6])
