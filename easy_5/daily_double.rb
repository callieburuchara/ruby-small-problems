# start a new empty_array
# split string into array with chars and then iterate with each
# add char to empty IF empty's last letter wasn't it
# return empty_array

def crunch(str)
  final = []
  
  str.chars.each do |letter|
    final << letter if final.last != letter
  end
  final.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

#GIVEN SOLUTION

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg') 
p crunch('a') 
p crunch('') 