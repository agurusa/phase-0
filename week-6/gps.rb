def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3

#   # This is iterating through the library hash. It's comparing the number of ingredients in the item to make, to determine if they're unequal.
#   library.each do |food, quantity|
# #     p food
# #     # library["cookie"] => 1
# #     # library[item_to_make] => 1
# #     # library[[1, 2]]
# #     # library[food[0]]
# #     # quantity
#     if quantity != library[item_to_make]
#     1 ! = 7
#     error_counter = 2

#     5 ! = 7
#     error_counter = 1

#     7 != 7
#     error_counter = 1
#       p error_counter
#       # error_counter += -1
  #     error_counter -= 1
  #   end
  # end

# ## Still figuring this part out. The "Argument Error" part. Not sure how this fits in.
  # if error_counter == 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end



  # if the item_to_make is available to make, fine
  # if not, throw and error
  if !library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end



  # library.values_at(cookie)[0]
#   library.values_at("pie")
# => [7]
  # library.values_at("cookie", "cake", "pie")
  # [1, 5, 7]


  # We're assigning the number of ingredients of item to make to the variable "serving size".
  serving_size = library.values_at(item_to_make)[0]

  # The extra ingredients left out.   22 / 5 = 4 r. 2
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
p serving_size_calc("TIME FOR LUNCH", 5)