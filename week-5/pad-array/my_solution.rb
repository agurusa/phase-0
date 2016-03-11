 # Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 3 arguments: an array, a minimum size (this will be an integer), and an optional padding (any object)
# What is the output? (i.e. What should the code return?) the original array where:
 # -the length is equal to the min_size integer
 # -if the number of elements in the array is shorter than the min_size, it should be completed with the padding object
 # -the output array should first be populated with each consecutive element in the input array
# What are the steps needed to solve the problem?
#1. Identify the length of the input array
#2. Compare that length to the value of min_size
#3. Add new array elements with the padding value until the length of the input array is equal to or bigger than min_size
#4. Return the value of the array

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   while array.length < min_size
#   array << value
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new
#   array.each do |x|
#     new_array.push(x)
#   end
#   while new_array.length < min_size
#     new_array.push(value)
#   end
#   p array
#   p new_array
# end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
  array << value
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.map{|x| x}
  while new_array.length < min_size
    new_array.push(value)
  end
  new_array
end

# # 4. Reflection
# Were you successful in breaking the problem down into small steps?

# We were successful. We spoke about the problem from an overall standpoint, then broke it down into pieces.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# It was pretty easy to write the code once we had the steps written down. We both had different methods that we suggested, but once it was written down we could discuss how well each method fit our needs.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

#   It was successful. We did have some issues using <<, as we had to remember that it was destructive and for part two we were supposed to write a non-destructive method.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# We ended up using .map in our refactored version. It made it so we could use a destructive method on a new array that was created using the old array.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think our code is pretty readable. We used descriptive variables because it was easier to read and edit our code if there were problems. We also tried to keep our spacing in check so we could review our code quickly and determine if we were missing end statements, etc.

# What is the difference between destructive and non-destructive methods in your own words?

# Destructive methods are those that change the variable they are acting on. Nondestructive methods are those that maintain the status of the variable they act on. For example, some methods will find and return a value in an array, while others will find and delete that value out of the array.