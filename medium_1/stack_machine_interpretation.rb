# there is a stack of values = stack
# #push and #pop affect the last value in the stack
# 

require 'pry'

def integer?(str)
  str.to_i.to_s == str
end

def minilang(str)
  stack = []
  register = 0

  str_array = str.split

  str_array.each do |word|
    case
    when integer?(word) 
      register = word.to_i
    when word == 'PUSH'
      stack << register
    when word == 'ADD'
      register += stack.pop
    when word == 'SUB'
      register -= stack.pop
    when word == 'MULT'
      register *= stack.pop
    when word == 'DIV'
      register = register / stack.pop
    when word == 'MOD'
      register = register % stack.pop
    when word == 'POP'
      register = stack.pop
    when word == 'PRINT'
      puts register
    end
  end
end 

#p minilang('PRINT')
# 0

#p minilang('5 PUSH 3 MULT PRINT')
# 15

#p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

#p minilang('5 PUSH POP PRINT')
# 5

#p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

#p minilang('-3 PUSH 5 SUB PRINT')
# 8

#p minilang('6 PUSH')
# (nothing printed; no PRINT commands)