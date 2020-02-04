# define a method that takes one argument
# turn the string into in integer
# split each number into its own item in an array
# return that array


# Brute force
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10) #Integer#divmod
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end


# Idiomatic Ruby -- How Ruby should usually be written
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end 

# .to_s - numbers are turned into a string
# .chars - string is turned into an array
# .map(&:to_i) - this array is turned into a new array where
#   elements are turned into integers
# &:to_i is short for something.map {|char| char.to_i}