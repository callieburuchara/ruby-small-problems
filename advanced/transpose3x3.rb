matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# input: nested array: array with three, 3-item arrays
# output: new nested array that is transposed
# --> that is, the columns are the new rows
# cannot use Matrix class or Array#transpose

# accept nested array as argument (arr)
# first = [arr[0][0], arr[1][0], arr[2][0]

def transpose(matrix)
  first = [matrix[0][0], matrix[1][0], matrix[2][0]]
  second = [matrix[0][1], matrix[1][1], matrix[2][1]]
  third = [matrix[0][2], matrix[1][2], matrix[2][2]]

  new_matrix = [first, second, third]
end
new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# GIVEN SOLUTION
# def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end