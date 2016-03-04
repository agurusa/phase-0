
# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words == []
    p nil
  else
    words_and_lengths = {}
    list_of_words.each do |word|
      words_and_lengths[word.length] = word
    end
    p words_and_lengths
    longest_length = list_of_words[0].length
    words_and_lengths.each do|length, word|
      if length > longest_length
        longest_length = length
      end
    end
    p words_and_lengths[longest_length]
  end
end