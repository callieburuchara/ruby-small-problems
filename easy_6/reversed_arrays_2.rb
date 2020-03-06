def reverse(array)
  new_array = []
  counter = -1

  until new_array.size == array.size
    new_array << array[counter]
    counter -= 1
  end
  new_array
  end

  p reverse([1,2,3,4])
  p reverse(%w(a b e d c))
  p reverse(['abc'])

  #GIVEN SOLUTION
  def reverse(array)
    result_array = []
    array.reverse_each { |element| result_array << element }
    result_array
  end