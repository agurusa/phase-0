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

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
    @integer = integer
    if @integer > @answer
      return :high
    elsif @integer< @answer
      return :low
    else @integer == @answer
      return :correct
    end
    solved?
  end

  def solved?
    if @integer == @answer
      return true
    else
      return false
    end
  end
  # Make sure you define the other required methods, too
end



# Refactored Solution

