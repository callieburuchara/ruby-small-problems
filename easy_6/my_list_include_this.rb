# take array and search value as arguments (ary, sval)
# 
def include?(ary, sval)
  ary.any? {|chr| chr == sval}
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

# GIVEN SOLUTION
def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

#Kev solution
def include?(array, search)
  array.count(search) > 0 ? true : false
end