#method accepts a string
# string turned into an array with chars
# if the chr is anything but a letter, replace with a space
# iterate through the array again
# if two+ consecutive spaces, only keep the first space
require 'pry'
require 'pry-byebug'

def replace_non_abc_w_spaces(str)

def cleanup(str)
  separate = str.chars.map do |chr|
              if (/[a-zA-Z]/ =~ chr) == nil
                chr = ' '
              else
                chr
              end
            end

  counter = -1
  separate.delete_if do |_|
    counter += 1
    separate[counter] == separate[counter + 1]
  end
separate.join
end

puts cleanup("hi! yoU OKAY")
puts cleanup("---what's my +*& line?")

#Given Solution A
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

#Given Solution B
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end