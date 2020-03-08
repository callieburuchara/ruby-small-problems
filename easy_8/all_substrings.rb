# accept a string as argument (str)
# split string up into character array with chars
# ['a', 'b', 'c', 'd', 'e']
# initialize final_array as an empty array
# 

def substrings(string)
  result = []
  start_position = 0
  loop do
    0.upto(string.size - 1) do |index|
      result << string[start_position..index]
    end
    start_position += 1
    break if start_position > (string.size)
  end
  result.reject(&:empty?)
end

p substrings('abcde')

# GIVEN SOLUTION
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end