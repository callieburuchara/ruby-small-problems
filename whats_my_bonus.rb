# define a method, takes 2 arguments
# argument 1 = positive integer, 2 = boolean
# if true, returns half of integer
# if false, returns 0

# def calculate_bonus(salary, boolean)
#   if boolean == true
#     salary / 2
#   else
#     0
#   end
# end

# puts calculate_bonus(1000, false)

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end 