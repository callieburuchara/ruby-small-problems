#take a string (str)
#separate str into an array of characters with #chars
#map a new array
# if chr =~ a-z, then upcase it
# if chr =~ A-Z, then downcase it
# else just leave it be
# join that new array together

def swapcase(str)
  str.chars.map do |chr|
    if chr =~ /[a-z]/
      chr.upcase
    elsif chr =~ /[A-Z]/
      chr.downcase
    else
      chr
    end
  end.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')