# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive INTEGER
# What is the output? (i.e. What should the code return?) a comma separated STRING


# What are the steps needed to solve the problem?

# 1. Turn the integer into something where I can read each individual number. Because I eventually want to add nonnumber characters, I should probably turn it into a string.
# 2. Determine the amount of characters in the string.
# 3. UNLESS the amount of characters in the string is greater than 3, the number will not need commas.
# 4. ELSE, add commas like so:
#   Start grabbing numbers from the end of the original number in steps of 3. Collect them.
#   Add the a "," before the collection.
#   Continue grabbing numbers from the end of the original string UNTIL it's empty.
#   Add the "," and new numbers to the beginning of the numbers that were collected.
#   Add whatever is left from the original number to the beginning of the number that now has commas.


# 1. Initial Solution

# def separate_comma(number)
#   number_as_string = number.to_s
#   unless number_as_string.length > 3
#     return number_as_string
#   else
#     number_as_string_array = number_as_string.chars #can only use pop on an array
#     new_array = []
#     until number_as_string_array.length <= 3
#       new_array = [','] + number_as_string_array.pop(3) + new_array
#     end
#     return (number_as_string_array<<new_array).join
#   end
# end


# 2. Refactored Solution

def separate_comma(number)
  number = number.to_s
  unless number.length > 3
    return number
  else
    x = number.length
    n = 4
    while n <= x
      number.insert(-n,",")
      n += 4
      x = number.length
    end
  end
  number
end




# 3. Reflection

# Was your pseudocode effective in helping you build a successful initial solution?

# Yes. It made it easier to understand the steps to solving the problem, and helped me figure out if I needed to convert objects (for example, the input is an integer. I had to convert it to a string).

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I ended up using insert. This allowed me to use a string instead of an array. I wouldn't say it significantly changed my code, but it but it did make it more readable. I had a little difficulty understanding why my counter n wasn't working. I ended up having to print out the value of n every time my program looped, and compare it to the length of the entire string. I realized that the length of my string wasn't updating as the program looped, because I defined it outside the loop. I had to introduct a new variable x to update the length inside the loop as well.

# How did you initially iterate through the data structure?
# I initially iterated using a counter through an array. I actually did the same thing in my refactored version, but I was iterating through a string. **note** I generally use array.each do |x|, but it didn't seem applicable in this case. I was iterating through sections of 3, not in sections of 1. I didn't want to complicate the original solution by researching the use of a block iteration, so I stuck to using .pop. In the refactored version, I found .each_char to iterate over a string, but I still thought the use of a counter was more intuitive in this case because you could iterate in sections (in this case, sections of 4 characters). I found a method that did allow you to iterate in sections for arrays, but I couldn't figure out how to employ it for a string.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I do. I think it's more readable because I only made one conversion of an object instead of two. Also, insert is a little easier to understand that pop.