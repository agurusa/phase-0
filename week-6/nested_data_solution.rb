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

startup_names =
["bit",
  ["find", "fast",
    ["optimize", "scope"]]]

# p startup_names[1][2][0]

# startup_names.each do |outside|


 # elsif element[inner].kind_of?(Array)
 #  inner.each {|innest| p innest + "ly"}

 #  else
 #  p element + "ly"
 # end
# end