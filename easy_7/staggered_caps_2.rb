# take string as argument (str)
# Turn string into an array of characters with chars


# make a new array with #map on chars
# use #with_index to get access to both
# if index position is odd, upcase
# if index position is even, downcase
# if chr is NOT a-z, or a-z, then just leave the 
# join back together with " "

def staggered_case(str)
  staggered = ''
  need_upper = true

  str.chars.each_with_index do |letter, index|
    if need_upper
      staggered += letter.upcase
    else
      staggered += letter.downcase
    end
    
    next if letter.match?(/[^a-zA-Z]/)
    need_upper = !need_upper
  end
  staggered
end
  
p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')