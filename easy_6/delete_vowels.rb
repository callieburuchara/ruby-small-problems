# accept an array of strings
# on the array, map and then delete if they include aeiou

def remove_vowels(ary)
  ary.map! {|l| l.delete "aeiouAEIOU"}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))