# input: str
# output: boolean
# --> dependent on balanced parentheses or not

# balanced= even amount of parentheses, and '(' goes before ')'

# accept a string as argument (str)
# initialize counter = 0
# iterate through string characters (chars.each)
# if/else statement
# if char == '(' --> add 1 to counter
# if char == ')' --> subtract 1 from counter
# only return true at the end if counter == 0
# at any time, return false if counter == negative number

def balanced?(str)
  counter = 0
  str.chars.each do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'
    break if counter < 0
  end
counter == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false