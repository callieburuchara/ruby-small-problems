# take two arrays (first, second)
# nested = first.product(second)
# nested.map.with_index (array, ind)
# 

# take two arrays (first, second)
# pair each of the first array elements with each of the second
#by using product
# Now, we have a nested array of numbers that need to be multiplied
# Iterate through each subarray
# multiply first index position by second index position
# flatten array

def multiply_all_pairs(ar1, ar2)
  nested = ar1.product(ar2)
  nested.map {|sub| sub[0] * sub[1]}.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])