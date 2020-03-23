# input: string word
# output: boolean

# rules: block of two letters can only be used once
# if both letters in block are used to spell word, then return false

# data: organize blocks with nested arrays

# accept a word string as argument (str)
# initialize a result, set it to nil
# call each on BLOCKS and iterate through each sub_array
# check if both letters are included in word string
# if they are, reassign result to false
# if they are not, reassign result to true
# return result

BLOCKS = [['B', 'O'], ['G', 'T'], ['V', 'I'], ['X', 'K'], 
          ['R', 'E'], ['L', 'Y'], ['D', 'Q'], ['F', 'S'],
          ['Z', 'M'], ['C', 'P'], ['J', 'W'], ['N', 'A'],
          ['H', 'U'] ]

def block_word?(str)
  result = nil

  BLOCKS.each do |sub_arr|
    if str.upcase.include?(sub_arr[0]) && str.upcase.include?(sub_arr[1])
      result = false
    else
      result = true
    end
  end
  result
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true