NUMBER_WORDS = %w(zero one two three four five six seven eight nine
              ten eleven twelve thirteen fourteen fifteen sixteen
              seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number]}
end

puts alphabetic_number_sort([1,2,6,7,8,9,1,2,16,12])


