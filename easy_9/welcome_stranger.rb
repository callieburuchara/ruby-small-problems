# accept an array and hash as the 2 arguments
# array:
# if array.size == 1, just use array[0] (assign to 'name')
# else array.join(' ') (assign to 'name')
# hash:
# pass those in as title and occupation

def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} " \
    "#{status[:occupation]} around."
end

p greetings(%w(Callie Buruchara), title: 'Legendary', occupation: 'Programmer')
