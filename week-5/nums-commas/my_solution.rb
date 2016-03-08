# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive INTEGER
# What is the output? (i.e. What should the code return?) a comma separated STRING
# Turn the integer into something where I can read each individual number. Because I eventually want to add nonnumber characters, I should probably turn it into a string.
# Determine the amount of characters in the string.
# UNLESS the amount of characters in the string is greater than 3, the number will not need commas.
# ELSE, add commas like so:
# Start grabbing numbers from the end of the original number in steps of 3. Collect them.
# Add the a "," before the collection.
# Continue grabbing numbers from the end of the original string UNTIL it's empty.
#Add the "," and new numbers to the beginning of the numbers that were collected.
#Add whatever is left from the original number to the beginning of the number that now has commas.


# What are the steps needed to solve the problem?


# 1. Initial Solution
def separate_comma(number)
  number_as_string = number.to_s
  unless number_as_string.length > 3
    return number_as_string
  else
    number_as_string_array = number_as_string.chars
    new_array = []
    until number_as_string_array.length <= 3
      new_array = [','] + number_as_string_array.pop(3) + new_array #can only use pop on an array
    end
    return (number_as_string_array<<new_array).join
  end
end

separate_comma(1000)






# 2. Refactored Solution




# 3. Reflection