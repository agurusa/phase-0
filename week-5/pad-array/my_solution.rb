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
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
  array << value
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  array.each do |x|
    new_array.push(x)
  end
  while new_array.length < min_size
    new_array.push(value)
  end
  p array
  p new_array
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
  array << value
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.map{|x| x}
  while new_array.length < min_size
    new_array.push(value)
  end
  return new_array
end

# 3. Refactored Solution



# 4. Reflection