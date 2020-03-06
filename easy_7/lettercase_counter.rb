#start a new hash
#hash[:lowercase] = (/[a-z]/ =~ str)
#hash[:uppercase] = (/[A-Z]/) =~ str)
#hash[:neither] = (/^[a-zA-Z]) =~ str)
#hash

def letter_case_count(str)
  count_hash = {}
  count_hash[:lowercase] = str.count("a-z")
  count_hash[:uppercase] = str.count("A-Z")
  count_hash[:neither] = str.count("^a-zA-Z")
  count_hash
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')

