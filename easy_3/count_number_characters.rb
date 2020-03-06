def prompt(message)
  puts "==> #{message}"
end

prompt("Please write word or multiple words:")
inputs = gets.chomp

count = inputs.delete(" ").size

prompt("There are #{count} characters in '#{inputs}'.")