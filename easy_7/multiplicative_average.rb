# accepts array of numbers
# sum = array.sum
# final = (sum / array.size).round(3)

def show_multiplicative_average(ary)
  product = 1.to_f
  ary.each {|num| product *= num} 
  average = (product/ary.size).round(3)
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
