def compute_sum(num)
  (0..num).inject { |sum, n| sum + n}
end

def compute_product(num)
  (1..num).inject {|product, n| product * n}
end 

# PROGRAM START
loop do
  puts "=> Please enter an integer greater than 0:"
  INTEGER = gets.chomp.to_i
  
  if INTEGER > 0
    break
  else
    puts "Invalid input."
  end
end


puts "=> Enter 's' to compute the sum or 'p' to compute the product."
computation = gets.chomp

if computation.downcase == "s"
  sum = compute_sum(INTEGER)
  puts "=> The sum of the integers between 1 and #{INTEGER} is #{sum}."
elsif computation.downcase == "p"
  product = compute_product(INTEGER)
  puts "=> The product of the integers between 1 and #{INTEGER} is #{product}."
else
  puts "=> Invalid input. Please enter 's' or 'p'."
end 
