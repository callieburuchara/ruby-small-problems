# take a string as argument
# ONE LINE print '+'
# print string.length.times "--"
# print '+'
# SECOND LINE print '|'
# print string.length.times '' (spaces)
# print '|'
#THIRD LINE print '| '
# then the string
# then print ' |'
#print second line same thing again here
# then print first line again here

def print_in_box(str)
  horizontal_rule = '+' + ('-' * (str.length + 2)) + '+'
  empty_line = "|#{' ' * (str.length + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{str} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box("hello")
print_in_box('To boldly go where no one has gone before.')
print_in_box('')