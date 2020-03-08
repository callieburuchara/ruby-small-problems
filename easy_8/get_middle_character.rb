# accept a non-emoty string argument (str)
# half = str.size / 2
# if str.size.odd? (return one element)
# str[half] --> returns middle element
# else (return two elements)
# str[half-1..half]

def center_of(str)
  half = str.size / 2

  if str.size.odd?
    str[half]
  else
    str[half-1..half]
  end
end

p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')