# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# pseudocode:
# Input: array and string
# Output:a new array
# Steps:
# # I want to search through each value in the array to see if it contains the second argument of my method (the string). I do not want to use a destructive method, because I want to return a new array and not modify the original.
# Make a blank array.
# Iterate over the input array and check if the thing to find is in the word. as the word in the input array.
  # Be sure to make everything in the array lowercase, so it'll be the same as the thing that i'm looking for, regardless of case.
  #iterate over each letter in the word. Maybe you can do this by calling on the position of the letter in the word.
# IF the word has the the thing I was trying to find, I want to put it in a new array.
# ELSE do nothing.
# return the new array with all the words that had the letter in it.


#initial solution
# def my_array_finding_method(i_want_pets, thing_to_find)
#   new_array = [] #I want to add all the strings I collect into this blank array
#   i_want_pets.each do |word| #for each word in the original array
#     words = word.to_s #make everything a string
#     letters = words.downcase #make all the letters in the word lowercase
#     range = letters[0..-1] #range is first index to last (first letter to last letter)
#     if range.include?(thing_to_find) #return true if thing_to_find is in the range
#     new_array << word
#     end #no else statement is needed because if it returns false, nothing needs to happen.
#   end
#   p new_array #returns and prints new_array
# end

# Person 1's solution (refactored)
def my_array_finding_method(i_want_pets, thing_to_find)
  new_array = []
  i_want_pets.each do |word|
    range = word.to_s.downcase[0..-1]
    if range.include?(thing_to_find)
    new_array << word
    end
  end
  return new_array
end

# psuedocode:
# Input:hash and integer
# Output:array
# I need to find a way to go over the values in the hash. if the value is the same as the input integer, i need to return the key.
# I then need to put that key in a new array.
# 1. iterate over the hash.
# 2. Compare the value in the hash to the thing to find.
# 3. IF they are equal, store the key to that hash in a new array.
# 4. ELSE do nothing.
# 5. Return that new array.


def my_hash_finding_method(my_family_pets_ages, thing_to_find)
  my_family_pets_ages.select{|name, age| age == thing_to_find}.keys #for each name/age pair in the my_family_pets_ages hash, see if age is equal to the thing_to_find. If it is, add the name/age pair to a new hash. Then, .keys returns a new array of all the keys in that new hash.
end

# Identify and describe the Ruby method(s) you implemented.
## include? checks whether a particular item is included in the array. It is just a boolean operator, so you have to decide what you want your program to do if it returns true or false. You have to include a range for this method to iterate over.
## << is the shovel method. If you write a<<b, the value in b is "shovelled" over to array a. It becomes the last item in that array. This is a destructive method, so be careful if you're trying to do something non-destructively!
## select returns a new hash consisting of entries for which the block returns true. There is a boolean operation that is its equivalent, but returning a hash made more sense to this particular problem.
##keys returns an array of the keys in the hash.



# Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #