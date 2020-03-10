# input -> integer (n)
# this integer represents amount of lights AND amount of repetitions
# output is an array
# this array represents lights that are on after all (n) repetitions

# create a nested array with n amount of numbers in [0] position that are 1..n
# all second values in nested array is whether the light is on or off
# false = off, true = on
# can use product to create this at beginning of the method
# or a separate method (done)

#iterate through each sub-array
# first, go through by ones and change all values to their opposite
# second go through by every two and do so,
# third, go through by every three and do so
# and so on and so forth until all n repetitions are done

def initialize_light_array(num)
  start_value = [false]
  round_amount = (1..num).to_a
  round_array = round_amount.product(start_value)
end

def select_on_lights(ary)
  ary.select do |sub_array|
    sub_array[0] if sub_array[1] == true
  end.map do |sub_array|
        sub_array[0]
  end
end  

def toggle_lights(num)
  round_amount = initialize_light_array(num)

  1.upto(num) do |n|
    round_amount.each do |sub_array|
      sub_array[1] = !sub_array[1] if sub_array[0] % n == 0
    end
  end
  select_on_lights(round_amount) 
end

p toggle_lights(5)
p toggle_lights(10)
p toggle_lights(20)
p toggle_lights(1000)
  

