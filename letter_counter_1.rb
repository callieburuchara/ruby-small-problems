def word_sizes(str)
  lengths = str.split.map do |word|
    word = word.length
  end

  l_hash = (lengths.sort.to_h {|num| [num, lengths.count(num)]})
  l_hash

end

# take a string as an argument
# separate str into array with split (each word as element)
# iterate through w map to replace each item with its length = lengths
# iterate through lengths with map and create a new hash
# where the key is the length & value is how many times that key is in lengths
# duplicate values will be automatically overwritten

#Given Solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end