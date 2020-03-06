vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# define a method that takes an array as an argument
# iterate over the array
# count how many times each word is in the array
# return the element and the amount of times its in the array

def count_occurences(array)
  occurences = {}

  array.uniq.each do |element|
    occurences[element] = array.count(element)  # hash[key] = value
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end 

count_occurences(vehicles)