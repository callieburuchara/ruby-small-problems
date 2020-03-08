# take two arrays: a and b
# result = a.zip(b)
# Iterate through result with map
# chr = chr[0] * chr[1]

def multiply_list(ar1, ar2)
  result = ar1.zip(ar2)

  result.map do |subarr|
    subarr = [subarr[0] * subarr[1]]
  end.flatten
end

p multiply_list([3, 5, 7], [9, 10, 11])

#GIVEN SOLUTION
def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end
