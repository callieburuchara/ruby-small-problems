# accept array as an argument (array)
# initialize empty array (result)
# each method
# num.times do result << word
# then flatten it

def buy_fruit(array)
  array.map {|sub| [sub[0]] * sub[1]}.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

