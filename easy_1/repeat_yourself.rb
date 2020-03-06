# define a method that takes two arguments
# arg1 = string, arg 2 = positive integer
# method should print string the integer amount of times
#end

# as bonus, I added validation and an exception handling 

def repeat(string, num)
  if num > 0
    num.times {puts string}
  else
    puts "Number provided was less than one unfortunately."
  end 
end

repeat("Hello!", 6)
repeat("Hellooo", 0)