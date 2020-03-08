# accept an integer as an argument (num)
# num_string = num.to_s
# n_size = num_string.size
# if n_size.even? 
# as well as num_string[0..n_size/2] == num_string[n_size/2 + 1..-1]
# then num
# else
# num * 2

def twice(num)
  num_string = num.to_s
  half = (num.to_s.size / 2) -1

  if num_string[0..half] == num_string[half+1..-1] && 
     num_string.size.even?
     num
  else
    num * 2
  end
end

p twice(37) #== 74
p twice(44)# == 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107)# == 214
p twice(103103) #== 103103
p twice(3333)# == 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789)# == 123_456_789_123_456_789
p twice(5) #== 10