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

# class Die
#   def initialize(labels)
#     if labels == []
#       raise ArgumentError.new("You can't have a die with nothing on the sides!")
#     end
#     @labels = labels
#     @sides = labels.length.to_i
#   end

#   def sides
#     @sides
#   end

#   def roll
#     @labels[rand(1..@sides)-1]
#   end
# end



# Refactored Solution

class Die

  attr_reader :sides

  def initialize(labels)
    if labels == []
      raise ArgumentError.new("You can't have a die with nothing on the sides!")
    end
    @labels = labels
    @sides = labels.length.to_i
  end

  def roll
    @labels[rand(@sides)]
  end

end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# This die class had to be initialized with 2 parameters: @labels and @sides. This was so @sides could be recognized as a class variable, and used for all of the class methods. I didn't change too much of the original logic, but I did have to think about the sides of the die having a different label associated with them (instead of just being the same number as the side of the die).

# What does this exercise teach you about making code that is easily changeable or modifiable?
# I had to figure out where it made the most sense to define my class variable @sides. I wanted to have all my class variables initialized at the same time, so it wasn't difficult to read.

# What new methods did you learn when working on this challenge, if any?

# I tried to use attributes to make my code a little shorter and more readable. I still am a little iffy about how to use them, and played around a bit with _reader vs _accessor.

# What concepts about classes were you able to solidify in this challenge?

# I solidified creating class variables and class methods. It was also nice to review raising argument errors.