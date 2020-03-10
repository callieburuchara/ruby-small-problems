# accept an array as argument (ary)
# use map
# 

def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1])
rotate_array(['a', 'b', 'c'])
rotate_array(['a'])

x = [1, 2, 3, 4]
p rotate_array(x) 
p x 

