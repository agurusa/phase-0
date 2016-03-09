# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) An array that has the value that occurs the largest amount of times in the original array
# What are the steps needed to solve the problem?
# 1. Start with an empty hash and an empty array
# 2. Iterate over the input array
# 3. For every item in that array add the item to the empty hash as a key
# 4. The value is the number of occurences of the item in the array
# 5. Set a max value equal to zero
# 6. iterate over the new hash
# 7. If the value is greater than the max value, set the new max value equal to that value
# 8. use a method to grab the keys from the hash that have an associated value equal to the final max value
# 9. Put all those keys into our empty array
# 10. Return the array


# 1. Initial Solution

# def mode(array)
#   hash = {}
#   new_array = []
#   array.each do | item |
#     hash[item] = array.count(item)
#   end
#   max = 0
#   hash.each do | key, freq |
#     if freq >= max
#       max = freq
#     end

#   end
#   hash.keep_if{|key, freq| freq == max}
#   p hash.keys

# end


# 3. Refactored Solution
def mode(array)
  hash = {}
  new_array = []
  array.each do | item |
    hash[item] = array.count(item)
  end
  max = 0
  hash.each do | key, freq |
    if freq >= max
      max = freq
    end
  end
  hash.keep_if{|key, freq| freq == max}.keys
end

p mode(%w(OMG OMG OMG WE WE WE SUCK ARE ARE ARE COOL COOL COOL ! ! ! ))



# 4. Reflection