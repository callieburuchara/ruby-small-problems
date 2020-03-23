# input: a four-integer year
# output: integer, representing the # of Friday the 13ths in that year

# assume the year is after 1752, when Gregorian Calendar started
# assume Gregorian Calendar is kept forever

# accept a year as an argument (year)
# initialize counter, set it to 0
# check all the 13ths of all 12 months
# for each 13th, ask if it was a Friday
# if it was a Friday, add 1 to counter
# return counter at end

def friday_13th(year)
  counter = 0
  month = 1
  loop do
    current = Time.new(year, month, 13)
    counter += 1 if current.friday? == true
    month += 1
    break if month == 13
  end
counter

end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2