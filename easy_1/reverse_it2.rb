# define a method that takes one argument (string, 1+ words)
# separate each word into an array
# iterate over each word
# if the word has more than 5 characters, reverse it
# put the words back together in a string
# return that string

new_string = nil

def reverse_words(string)
  new_string = string.split.each do |word|
    if word.length >= 5
      word.reverse!
    else
      word
    end
  end 
  new_string.join(" ")
end

puts reverse_words("How are you doing today")


# PROVIDED SOLUTION

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end