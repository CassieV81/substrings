# frozen_string_literal: true

def substrings(word, list_of_words)
  # split words and remove special characters with "gsub(/[^a-zA-Z0-9\ ]/,"")"
  # the space at the end of "9\" is to keep the spaces between words
  words_array = word.downcase.gsub(/[^a-zA-Z0-9\ ]/, ' ').split
  words_array.keep_if { |v| list_of_words.include?(v) }
  words = words_array.each_with_object(Hash.new(0)) do |count, result|
    result[count] += 1
  end
  puts words
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings("Howdy partner, where is it going, sit down low! How's it going?", dictionary)

# => {"howdy"=>1, "partner"=>1, "it"=>2, "going"=>2, "sit"=>1, "down"=>1, "low"=>1, "how"=>1}
