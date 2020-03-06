def word_sizes(str)
  lengths = str.split.map do |word|
    word.delete! "^a-zA-Z"
    word.size
  end

  l_hash = (lengths.sort.to_h {|num| [num, lengths.count(num)]})
  l_hash

end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

# take a string as an argument
# separate str into array with split (each word as element)
# turn 
# iterate through w map to replace each item with its length = lengths
# iterate through lengths with map and create a new hash
# where the key is the length & value is how many times that key is in lengths
# duplicate values will be automatically overwritten