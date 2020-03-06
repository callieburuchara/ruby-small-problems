def interleave(ar1, ar2)
  new_array = []

  until ar2.size == 0
    new_array << ar1.delete_at(0)
    new_array << ar2.delete_at(0)
  end

  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) # == [1, 'a', 2, 'b', 3, 'c']

#GIVEN SOLUTION
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# DOING THE SAME WITH ZIP
a = [1, 2, 3]
b = ['a', 'b', 'c']

def interleave(a, b)
  a.zip(b).flatten
end

p interleave(a, b) # == [1, 'a', 2, 'b', 3, 'c']

