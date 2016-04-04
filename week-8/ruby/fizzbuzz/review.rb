# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

# def super_fizzbuzz(array)
#   array.map! do |x|
#     if x % 15 == 0
#       x = "FizzBuzz"
#     elsif x % 5 == 0
#       x = "Buzz"
#     elsif x % 3 == 0
#       x = "Fizz"
#     else
#       x = x
#     end
#   end
# end

# p super_fizzbuzz([1,3,3,5,6,7,4,8,15])


# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |element|
    if element % 15 == 0
      element = "FizzBuzz"
    elsif element % 5 == 0
      element = "Buzz"
    elsif element % 3 == 0
      element = "Fizz"
    else
      element = element
    end
  end
end


# p super_fizzbuzz([1,3,3,5,6,7,4,8,15])





# Reflection

# What concepts did you review or learn in this challenge?

# I reviewed control flow. I also reviewed map! and destructive vs non-destructive methods.

# What is still confusing to you about Ruby?

# I'm pretty solid on Ruby. I think this challenge went really well. If anything, I'd say that I would have liked to find a way to change the original array and not have to use the else element = element statement.

# What are you going to study to get more prepared for Phase 1?

# I am going to study a bit more about ternary operaters, and also try to understand implicit return values.