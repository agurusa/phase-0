# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# input: number
# output: true/false
# steps:
# a number is fibonacci if one or both of (5*n^2 + 4) or (5*n^2 - 4) is a perfect square.


# Initial Solution

def is_fibonacci?(num)
  p x = (5*(num*num) + 4)
  p x_2 = Math.sqrt(x).to_i
  p (x_2*x_2)
  p y = (5*(num*num) - 4)
  p y_2 = Math.sqrt(y).to_i
  p (y_2*y_2)
  if (x_2*x_2) == x || (y_2*y_2) == y
    p true
  else
    p false
  end
end

# is_fibonacci?(8670007398507948658051921)


# Refactored Solution







# Reflection