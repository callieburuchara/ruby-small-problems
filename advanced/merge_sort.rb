# input: array
# output: same array, but sorted (new array)

# must sort by making each element a nested array, then going back
# to a one dimensional array

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

def merge_sort(arr)
  return arr if arr.size == 1

  sub_array_1 = arr[0...arr.size / 2]
  sub_array_2 = arr[arr.size / 2...arr.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

p merge_sort([9, 5, 7, 1])