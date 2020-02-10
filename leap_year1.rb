# define leap_year that takes a year as an argument
# if year % 400 == 0 -> true
# if year % 100 == 0 --> false
# if year % 4 == 0 --> true

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

leap_year?(2016)
leap_year?(2015)
leap_year?(2100)
leap_year?(2400)

#a shorter solution:

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end