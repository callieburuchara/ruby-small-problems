# input: string
# output: three key hash
# --> lowercase percentage, uppercase percentage, neither percentage

# rules: input will always have 1+ characters

# data: string (input), hash (output)
# string_size: to determine percentages (use floats)

# accept a string as argument (str)
# initialize result hash
# initialize str_size = str.size
# lower = count lowercase letters
# upper = count uppercase letters
# neither = str_size - (lower + upper)ss
# set hash keys and values
# values will be total.to_f / lower/upper/neither

def letter_percentages(str)
  result = {}
  str_size = str.size
  lower = str.count('a-z')
  upper = str.count('A-Z')
  neither = str_size - (lower + upper)

  result[:lowercase] = (lower.to_f / (str_size.to_f)).ceil(4) * 100
  result[:uppercase] = (upper.to_f / (str_size.to_f)).ceil(4) * 100
  result[:neither] = (neither.to_f / (str_size.to_f)).ceil(4) * 100
  result
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')