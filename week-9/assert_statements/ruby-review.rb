# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The code failed on line 14. When name = "bettysue" and the assert method is run with name == "bettysue", the code did not fail. When assert{name == "billybob"}, def assert raised the "Assertion failed!" error.


# 3. Copy your selected challenge here

# Driver Code:
class GuessingGame
  attr_accessor :answer
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


# 4. Convert your driver test code from that challenge into Assert Statements
game = GuessingGame.new(14)
game.guess(14)
p game.solved?


def assert_equals(actual, expected, message)
  puts "*" * 50
  puts message
  puts "*" * 50
  puts actual == expected
end

assert_equals(game.answer, 14, "expected 14, got #{game.answer}")

assert_equals(game.guess(7), :low, "expected low, got #{game.guess(7)}")

assert_equals(game.guess(20), :high, "expected high, got #{game.guess(20)}")

assert_equals(game.guess(14), :correct, "expected correct, got #{game.guess(14)}")

assert_equals(game.solved?, true, "expected true, got #{game.solved?}" )



# 5. Reflection