# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:integer called answer, guess string from user
# Output: if the guess is larger than the input integer, return symbol :high.
# if the guess is lower, return symbol :low
# if the guess is the same, return :correct
# the other method, solved, should return true if the most recent input guess is correct. false if not.

# # Steps:
# 1. convert the user guess to a string.
# 2. initialize the guessing game class by defining the answer variable.
# 3. define an instance method called guess
# 4. .guess should have one argument, which is an integer called guess.
# 5. IF guess > answer, return :high
# 6. ELIF guess < ansewr, return :low
# 7. ELSE guess == answer, return :correct
# 8. define an instance method called solved?
# 9. IF the .guess method returned :correct, return true
# 10. ELSE, return false


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(integer)
#     @integer = integer
#     if @integer > @answer
#       return :high
#     elsif @integer< @answer
#       return :low
#     else @integer == @answer
#       return :correct
#     end
#     solved?
#   end

#   def solved?
#     if @integer == @answer
#       return true
#     else
#       return false
#     end
#   end
# end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
    @integer = integer
    @integer > @answer ? (:high) : ( @integer < @answer ? (:low) : (:correct))
  end

  def solved?
    @integer == @answer ? (true) : (false)
  end

end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# Instance variables are like the nouns of the world, and methods are like the verb acting on that noun.

# When should you use instance variables? What do they do for you?

# You should use instance variables when you're going to access those variables every time you call an instance of the class. They allow you to use variables throughout your class code. They also allow you to set different values for those variables for different objects, even if they are of the same Class. But from outside the object, they can't be altered.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow control is used when your program has different conditionals attached to the outcome. The program will check the first statement, and if that conditional is not filled (if it doesn't evaluate to true), it will move on to the next conditional statement. I didn't have any trouble using it in this challenge. I would say the hardest part about flow control was in the refactored section, where I introduced ternary operators. When doing this, I had to understand the parenthetical operations, and why they made the code more readable. This all has to do with flow control, and being able to read each nested set of parentheses as a new part of the flow.


# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Symbols save memory and time by looking at the symbol as an integer. A symbol can only be that symbol, and not a string of characters. Strings are also immutable, meaning that you can't change them at runtime. For a constant value, like true, false, high, low, and correct, these will not change in the way that we typically want to change and manipulate strings. This was a really good link to help me understand symbols better:

# http://www.troubleshooters.com/codecorn/ruby/symbols.htm#_What_can_symbols_do_for_you