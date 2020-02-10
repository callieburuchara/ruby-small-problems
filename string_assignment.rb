name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# => Alice
# => Bob
# This is because assignment (name = "Alice") does not mutate the caller. 
# It * moves * the caller. 

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
# => BOB
# This is because upcase! mutates the caller. Both variables are pointing at the
# same spot, so both get changed when name gets changed. 