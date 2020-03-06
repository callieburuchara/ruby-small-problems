def palindrome?(words)
  words == words.reverse
end 

def real_palindrome?(words)
  words = words.downcase.delete('^a-z0-9')
  palindrome?(words)
end

puts real_palindrome?("MaAm")