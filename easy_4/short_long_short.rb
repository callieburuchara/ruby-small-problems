# define method with two paramaters: string 1, string 2
# if string 1 is longer, put string 2 + string1 + string 2
# if string 2 is longer, but string 1, string 2, string 1

def short_long_short(string1, string2)
  if string1.length > string2.length
    puts string2 + string1 + string2
  else
    puts string1 + string2 + string1
  end
end

short_long_short("hello", "goodbye")
short_long_short("absolutely", "not")