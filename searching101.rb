def prompt(message)
  puts "==> #{message}"
end

chosen_numbers = []

prompt("Enter the 1st number:")
chosen_numbers << gets.chomp.to_i

prompt("Enter the 2nd number:")
chosen_numbers << gets.chomp.to_i

prompt("Enter the 3rd number:")
chosen_numbers << gets.chomp.to_i

prompt("Enter the 4th number:")
chosen_numbers << gets.chomp.to_i

prompt("Enter the 5th number:")
chosen_numbers << gets.chomp.to_i

prompt("Enter the last number:")
last_number = gets.chomp.to_i

if chosen_numbers.include?(last_number)
  prompt("The number #{last_number} appears in #{chosen_numbers.to_s}.")
else 
  prompt("The number #{last_number} does not appear in #{chosen_numbers.to_s}.")
end 