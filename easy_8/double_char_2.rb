# accepts a string as an argument (str)
# turn str into an array of characters with chars
# call map on this new array of characters
# in the map code block, if char is consonant, double it
# otherwise, just put the regular char
# join this new array together

def double_consonants(str)
  str.chars.map do |chr|
    if chr =~ /[a-z&&[^aeiou]]/i
      chr * 2
    else
      chr
    end
  end.join
end

p double_consonants('String')
p double_consonants("Hello-World!")
double_consonants("July 4th")