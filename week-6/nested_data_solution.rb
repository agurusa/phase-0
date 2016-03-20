# RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ]]]
# # attempts:
# # ============================================================
# #p array[1][1][0]
# #p array[1][2][0]
# #p array[1][1][1]
# #p array[1][1][1][0]
# # p array[0][1][2]
# # p array[1][2][1]
# #p array[1]
# #p array[1][1]
# #p array [1][1][1]
# #p array [1][1][2]
p array [1][1][2][0]

# # ============================================================

# # Hole 2
# # Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
# #p hash[outer:]
# #p hash["outer:"]
# #p hash[:outer]
# #p hash[:outer][:inner]
# #p hash[:outer][:inner]["almost"]
p hash[:outer][:inner]["almost"][3]

# # ============================================================

# # Hole 3
# # Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
# #p nested_data[:array]
# #p nested_data[:array][1]
p nested_data[:array][1][:hash]

#

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array =
[5,
  [10, 15],
  [20,25,30],
35]
#destructive method, because it says "modify the original array"
# p number_array[1][1]


# number_array.map! do |element|
#   if element.kind_of?(Array)
#     element.map!{|inner| p inner + 5}
#   else
#     p element + 5
#   end
# end

# p number_array

#Refactored:

number_array.map! do |outer|
  if outer.kind_of?(Array)
    outer.map!{|inner| inner + 5}
  else
    outer + 5
  end
end

p number_array

# # Bonus:

# startup_names =
# ["bit",
#   ["find", "fast",
#     ["optimize", "scope"]]]

# p startup_names[1][2][0]

# startup_names.each do |outside|


 # elsif element[inner].kind_of?(Array)
 #  inner.each {|innest| p innest + "ly"}

 #  else
 #  p element + "ly"
 # end
# end

#Reflection:
# What are some general rules you can apply to nested arrays?
# The first index value that is being accessed is the outer most array. If you are trying to access a value that doesn't exist in the array, it will return nil. To get to the inner most nest, you have to use the same amount of index values as number of nests.

# What are some ways you can iterate over nested arrays?
# You can iterate by nesting your iterating methods. For example, to iterate through the inner nests, you first have to iterate through the outer nests, then determine if there is an inner nest to iterate through.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We used .kind_of? which was a boolean statement that determined if the object was another nested Array. This was a good option because it was both readable and provided a true/false output that gave us the option to iterate over the internal array.