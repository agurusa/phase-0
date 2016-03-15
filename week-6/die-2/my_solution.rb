# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: the number of sides on the die, and a random string from the input array of strings.
# Steps:
# 1. initialize the Die class by passing an argument of the array of strings into the class.
# 2. Create an argument error in case someone tries to put in an empty array.
#     -IF the array is empty
#     -tell the user that they're dumb for putting in an empty string :).
# 3. Count the number of strings in the array to determine the amount of sides the die has. Return that value for the sides method.
# 4. Pick a random number in range (1..sides).
# 5. Find the string associated with that side number. You'll be accessing the value at the index number by doing that number-1. Return that value.



# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("You can't have a die with nothing on the sides!")
    end
    @labels = labels
    @sides = labels.length.to_i
  end

  def sides
    @sides
  end

  def roll
    @labels[rand(1..@sides)-1]
  end
end



# Refactored Solution

