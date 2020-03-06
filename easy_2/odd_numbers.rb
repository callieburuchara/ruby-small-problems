# OPTION 1
array = Array(1..99)

array.each { |num| puts num unless num % 2 == 0}

# OPTION 2
for i in 1..99
  next if i % 2 == 0
  puts i 
end 

# OPTION 3 (supplied solution)
value = 1
while value <= 99
  puts value
  value += 2
end 