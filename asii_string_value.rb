# define method, takes one string as argument
# split string into array characters with chars
# call #ord on each character to find out its number
# add all of those numbers together
# return that number

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
  end

  puts ascii_value('')
