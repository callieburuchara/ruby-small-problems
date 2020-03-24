NOUNS = %w(dog cat spoon shoe bed door beetle rainbow sugar)
VERBS = %w(jumps laughs discovers abandons loves hopes cures)
ADVERBS = %w(heavily quietly slowly intrepidly cutely confusingly)
ADJECTIVES = %w(sweet lonely filthy purple spotted angry forgotten)

File.open("madlibs_text.txt") do |file|
  file.each do |line|
    puts format(line, noun:       NOUNS.sample,
                      verb:       VERBS.sample,
                      adjective:  ADJECTIVES.sample,
                      adverb:     ADVERBS.sample)
  end
end

