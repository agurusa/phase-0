# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Aarthi Gurusami.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:  1. an array of integers
# Output:  1. a sum of the integers
# Steps to solve the problem.
#
#a. define method as taking array
#b. define variable as 0
#c. begin interating through array
#d. create equation to add sum of array values
#e. return sum
#
# 1. total initial solution

#def total(array)
#    x = 0
#    array.each do |y|
#        x += y
#    end
#    return x
#end

# 3. total refactored solution

def total(array)
  return (array).reduce(:+)
end

# same as initial solution

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:  an array of strings
# Output:  a sentence composed of the strings
# Steps to solve the problem.
#
#a. define method, total
#b. define variable x as equal to a space
#c. begin interating through array
#d. create equation to add array string values
#e. return sentence
#
#
#
# 5. sentence_maker initial solution

#def sentence_maker(array)
#  x= ""
#  array.each do |y|
#      x = x + y.to_s + " "
#  end
#  a = x.chomp(" ")
#  return a.capitalize + "."
#end

#

# 6. sentence_maker refactored solution

def sentence_maker(array)
   x = array.join(" ") + "."
   return x.capitalize
end