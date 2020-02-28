def swap(str)
  split_up = str.split
  
  split_up.map! do |word|
    first = word[0]
    last = word[word.length - 1]
    
    if word.length > 1
      word.delete_prefix!(first)
      word.delete_suffix!(last)

      word.prepend(last)
      word << first
    else
      word
    end
  end
  split_up.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')

# Given solution

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end