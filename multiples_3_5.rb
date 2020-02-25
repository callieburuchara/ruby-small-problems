def multisum(num)
  numbers = (1..num).to_a
  numbers.keep_if {|x| x % 3 == 0 || x % 5 == 0}
  numbers.sum
end

multisum(20)
