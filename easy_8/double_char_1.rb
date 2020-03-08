# accept a string as an argument (str)
# split array into chars (array of characters)
# call map on that
# then, multiple each character by 2
# map will return itself
# call join

def repeater(str)
  str.chars.map {|chr| chr * 2}.join
end

p repeater('Hello')
p repeater("Good job!")