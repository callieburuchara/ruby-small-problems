#take an array of numbers
# first index place
# add that to first + second
# add that to first + second + third
# and so on until end of array

# total_sum = 0 
# initialize counter at 0
# until index = array.size - 1
# total_sum + (array[0..counter].sum)
#counter +=1

def sum_of_sums(ary)
  total_sum = 0
  counter = 0

  until counter > ary.size - 1
    total_sum += ary[0..counter].sum
    counter +=1
  end
  total_sum
end


def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end
p sum_of_sums([3, 5, 2])
