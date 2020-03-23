# input: array
# output: sorted original array using bubble sort
# can assume input array always has at least two items

# accept arr as argument
# idx = 0
# until array == arr.sort
# if arr[idx] > arr[idx + 1]
# --> arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
# else
# idx + 1


def bubble_sort!(arr)
  idx = 0

  until arr == arr.sort
    if arr[idx] > arr[idx + 1]
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
    else
      idx += 1
    end

    idx = 0 if idx >= arr.size - 1
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)