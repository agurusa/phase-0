
# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words == []
    p nil
  else
    words_and_lengths = {}
    list_of_words.each do |word|
      words_and_lengths[word.length] = word
    end
    p words_and_lengths
    shortest_length = list_of_words[0].length
    words_and_lengths.each do|length, word|
      if length < shortest_length
        shortest_length = length
      end
    end
    p words_and_lengths[shortest_length]
  end
end

