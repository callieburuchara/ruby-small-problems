# input is a positive, odd integer (num)
# output is a four-pointed diamond that has a range
#amount of asterisks that is (1..num)

# first line is one asterisk
# each line is + 2 than the previous line until the middle
# middle is the num amount of asterisks (max amount)
# then it's - 2 than the previous line until the end
# last line is one asterisk

def diamond(num)
  1.upto(num) do |times|
    next if times.even?
    puts ('*' * times).center(num)
  end
  (num-1).downto(1) do |times|
    next if times.even?
    puts ('*' * times).center(num)
  end
end

diamond(3)
diamond(1)
diamond(9)

