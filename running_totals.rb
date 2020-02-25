def running_total(array)
  sum = 0
  array.map {|value| sum += value}
end

puts running_total([2,5,13])
  #counter = 1
  #each element equals array[counter] + array[counter-1]