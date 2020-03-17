def fibonacci(num)
  if num < 2
    num
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

p fibonacci(3)
p fibonacci(12)
p fibonacci(20)