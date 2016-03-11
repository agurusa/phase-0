# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode
# Input: the user will be making a new variable called die. The input is the variable die and an integer value.
# Output: Either an argument error (if the integer input is less than 1), or a number (if the user calls one of the methods on their new die variable)
# Steps:
# 1. You have to define what a die class is, and tell the program what kind of variables you're going to put in it. Since we're just putting in a number of sides, it should be initialized with a number variable.
  # -The user has to know if they put in an amount of sides that don't make sense. An arugment error is a class that tells the user that they put in the wrong argument to call the method. Since our die has to have at least one side, it should raise an error IF the user puts in anything less than 1. This will be defined in the initialize method, since you can't create a die in the Die class without the right number of sides.
# 2. If you want to know the number of sides in the variable, you should be able to print out the number of sides by calling on die.sides.
# 3. The method roll should print out a random number between 1 and the amount of sides on the die.

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides < 1
#       raise ArgumentError.new("Your die can't have less than 1 side, dummy")
#     end
#     @sides = sides.to_i
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     p rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Your die can't have less than 1 side, dummy")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end





# 4. Reflection

# 1. What is an ArgumentError and why would you use one?
# An ArgumentError is when the user is attempting to call on a variable, but they didn't provide the right input. For example, a die has to have a certain number of sides. If the user attempted to create a die in the Die class that didn't have the right number of sides, and ArgumentError should be defined in that class.
# 2. What new Ruby methods did you implement? What challenges or successes did you have in implementing them?
# I only applied two Ruby methods: .to_i and rand. I originally used .to_i because I was trying to account for the user inputting a float. I deleted this statement in the refactored method because it should probably raise an ArgumentError instead of just converting the float to an integer. I also used rand, which determines a random number in a certain range. I didn't have trouble implementing these.
# 3. What is a Ruby class? Why would you use it?
# A class is what you can use to define new ojects in Ruby. It has certain properties and attributes that are automatically given to any new variable that is in that class. When you define a class, you can define those attributes. It's useful because you can give that class certain methods that are specific to that variables in that class. It gives us a lot of power to be able to specifically define how we want certain objects in Ruby to react to certain commands.
# What is the difference between a local variable and an instance variable? Where can an instance variable be used?
# A local variable can only be used within the method that defines it. An instance variable is accessible through an entire instance of the  class. It is written like this:
# # @instance_variable.
  # These variables are useful because you can use them throughout the instance: that means that you can define different methods in the class that call on that same variable.
