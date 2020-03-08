# take two arguments: start, end numbers 
# start.upto(end) do |num|
# case num
# when num % 3 == 0 && num % 5 == 0
# then print 'Fizzbuzz'
# when num % 3 == 0
# then print 'Fizz'
# when num % 5 == 0
# then print 'Buzz'
# else then print num
#changed to if/else, but not sure. 

def fizzbuzz(a, b)
  a.upto(b) do |num|
    if num % 3 == 0 && num % 5 == 0
      print 'Fizzbuzz, '
    elsif num % 3 == 0
      print 'Fizz, '
    elsif num % 5 == 0
      print 'Buzz, '
    else
      print "#{num}, "
    end
  end
end

fizzbuzz(1, 15)

# GIVEN SOLUTION

def fizzbuzz(starting_num, ending_num)
  result = []
  starting_num.upto(ending_num) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

  def fizzbuzz_value(number)
    case
    when number % 3 == 0 && number % 5 == 0
      'FizzBuzz'
    when number % 5 == 0
      'Buzz'
    when number % 3 == 0
      'Fizz'
    else
      number
    end
  end

  fizzbuzz(1, 15)