def xor?(first, second)
  return true if first && !second
  return true if second && !first
  false
end

#Shorter Version
def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end


# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false