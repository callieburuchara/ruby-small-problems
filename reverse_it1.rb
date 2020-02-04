# define a method that takes one string as argument
# separate the words
# reverse the order of the words
# put the words back together
# return that new string

def reverse_sentence(words)
  words.split(" ").reverse.join(" ")
end 

p reverse_sentence("Hello World")