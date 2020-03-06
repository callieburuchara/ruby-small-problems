def palindrome?(words)
  words == words.reverse
end

puts palindrome?("maam")