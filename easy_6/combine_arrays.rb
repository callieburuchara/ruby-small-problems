# take two arrays
# unshift all of the second array and << it to the first one
# then call uniq! on final array and return that

def merge(ar1, ar2)
  ar2.each {|chr| ar1 << chr}
  ar1.uniq!
end

p merge([1, 3, 5], [3, 6, 9])

# GIVEN SOLUTION
def merge(array_1, array_2)
  array_1 | array_2
end