# take string as argument (str)
# Turn string into an array of characters with chars
# make a new array with #map on chars
# use #with_index to get access to both
# if index position is odd, upcase
# if index position is even, downcase
# join back together with " "

def staggered_case(str)
  str.chars.map.with_index do |chr, ind|
    ind.odd? ? chr.downcase : chr.upcase
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')
      
