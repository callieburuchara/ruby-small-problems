# ask user for bill amount
# ask user for tip rate
# divide tip rate by 100 & multiply it by bill amount
# display tip amount
# display tip + original bill amount

puts "What is the bill amount?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = (gets.chomp.to_f) / 100

tip_amount = (bill * tip)
bill_total = (bill + tip_amount)

bill_total = format("%.2f", bill_total)
tip_amount = format("%.2f", tip_amount)

puts "The tip is $#{tip_amount}"
puts "The total is $#{bill_total}"