# take an array
#  start a new empty array
# new array << oldarray.pop
require 'pry'
require 'pry-byebug'


def reverse!(ary)
  index = 0
  end_index = -1
  half = (ary.size / 2 )

  loop do 
    ary[index], ary[end_index] = ary[end_index], ary[index]
    index += 1
    end_index -= 1
    break if index == half
  end
  ary
end

p reverse!([1, 2, 3, 4])
p reverse!(%w(a b e d c))
p reverse!(['abc'])
p reverse!([])