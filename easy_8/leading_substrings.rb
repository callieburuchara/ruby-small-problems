# accept a string
# initialize an empty array (ary)
# initialize an accumulator as an empty string
# string.each do
# add each element to accululator
# add accumulator to the new array

def substrings_at_start(str)
  ary = []
  accumulator = ""

  str.chars.each do |char|
    accumulator += char
    ary << accumulator
  end

  ary
end

p substrings_at_start('abc')
p substrings_at_start('xyzzy')
p substrings_at_start('a')

# GIVEN SOLUTION
def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end