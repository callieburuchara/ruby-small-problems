# input: text file (many sentences)
# output: longest sentence (str) & "This string is {Integer} words long"

# sentence: ends with period, exclamation point, or question mark
# anything that is not a space or an ending is a WORD

# accept long string as argument (str)
# break up str into array of sentences with str.split(/[\.\?\!]/)
# iterate over this new array with map and split each word up
# with split (by spaces). Now we have nested arrays of them.
# now count their size and select the biggest one


actual_text = File.read("longest_sen_test.txt")
next_test = File.read("longest_sen_test2.txt")

def longest_sentence(text)
  nested_array = text.split(/[\.\?\!]/).map do |sentence|
                   sentence.split
                 end
  selection = nested_array.sort {|a, b| b.count <=> a.count}[0]

  <<-OUTPUT
  The longest sentence is:

  #{selection.join(' ')}
  
  This sentence has #{selection.size} words.
  OUTPUT
end

puts longest_sentence(next_test)