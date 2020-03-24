
# accept two arrays as arguments (a, b)
# start an index counter
# initialize empty result array
# loop over both arrays until result array size == a + b sizes
# if first element of a is smaller then first of b,
# put in a then b
# otherwise
# but in b then a
# advance the index position
# next if index position of either a or b does not exist

# def merge(arr1, arr2)
#   return arr1 if arr2.empty?
#   return arr2 if arr1.empty?

#   index = 0
#   result = []
#   until result.size == arr1.size + arr2.size 
#     if arr2[index] == nil
#       result << arr1[index]
#     elsif arr1[index] == nil
#       result << arr2[index]
#     elsif arr1[index] < arr2[index]
#       result << arr1[index] << arr2[index]
#     elsif arr2[index] < arr1[index]
#       result << arr2[index] << arr1[index]
#     end
#     index += 1
#   end
#   result
# end

def merge(arr1, arr2)
  return arr1 if arr2.empty?
  return arr2 if arr1.empty?
  index2 = 0
  result = []

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] <= value
      result << arr2[index2]
      index2 += 1
    end
    result << value
  end
  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]