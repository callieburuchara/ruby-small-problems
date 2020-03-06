# take number (num)
# array = (1..9).to_a
# counter = num - 1
# loop
# puts counter " " + array.item.amount * "*"
# counter -=1
# break if counter == 0

def triangle(num)
  counter = (num - 1)
  index = 1

  num.times do |_|
    puts (" " * counter) + ("*" * index)
    counter -=1
    index += 1
  end
end

triangle(5)
triangle(20)