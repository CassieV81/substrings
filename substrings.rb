def substrings(word, list_of_words)
  words_array = word.split
  words_array.keep_if {|v| list_of_words.include?(v)}
  words = words_array.reduce(Hash.new(0)) do |result, count|
    result[count] += 1
    result
  end
  puts words
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("how is it going below the owns part below going?", dictionary)