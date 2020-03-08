def uppercase?(str)
  !str.upcase!
end

p uppercase?('t') #== false
p uppercase?('T') #== true
p uppercase?('Four Score') #== false
p uppercase?('FOUR SCORE') #== true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true

#GIVEN SOLUTION
def uppercase?(string)
  string == string.upcase
end