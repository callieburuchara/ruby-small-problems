# input is string (str)
# output is an integer
# -> integer represents the amount of characters that occur 2+

# accept a string (str)
# 
# change the str to an array of characters with chars
# iterate over the chars array with select
#  multiple_character = result of select method invocation
# select chars if the array has more than one of that char in it
# count amount of characters in that array
# return that number 

def duplicate_count(str)
  array_of_str = str.downcase.chars
  selection = []
  
  array_of_str.each do |chr|
    if array_of_str.count(chr) > 1 && !selection.include?(chr)
      selection <<  chr  
    end
  end
  selection.size
end

p duplicate_count("abcdeaB")

def duplicate_count(str)
  array_of_str = str.downcase.chars
  selection = []
  
  array_of_str.each do |chr|
    if array_of_str.count(chr) > 1 # && !selection.include?(chr)
      selection <<  chr  
    end
  end
  selection.uniq.size
end