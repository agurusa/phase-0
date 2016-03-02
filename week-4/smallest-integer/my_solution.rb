# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

#Commenting my first solution out, because it uses the sort method
#def smallest_integer(list_of_nums)
#  list_of_nums.sort!
#  p list_of_nums[0]
#end

def smallest_integer(list_of_nums)
  list_of_nums.each do |nums|
    if (nums-1) < nums
      p (nums-1)
    else
      p nums
    end
  end
end

smallest_integer([1, 2, 3])