# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode

# Input: an integer
# Output: boolean statement
# Steps:
# Itialize the class with an input integer
# Raise an ArgumentError IF the number of digits in the input integer is not equal to 16
# Create a new method double
# Access the second last (-2) digit
# Iterate in steps of 2 until we hit the first digit (0)
# Multiply every other digit by two
# Create a new method sum_all
# Access the second last (-1) digit
# Iterate through each number and make sure that it's not a double digit
# IF digits in the number are greater than 1, seperate the digits and sum them
# Sum all numbers
# IF the remainder of the sum divided by 10 is equal to 0, check_card method should retun true
# ELSE check_card method should retun false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(credit_card_number)
#     @credit_card_number = credit_card_number.to_s.split("")
#     @credit_card_number.map! do |number|
#       number = number.to_i
#     end
#     if @credit_card_number.length != 16
#       raise ArgumentError.new("Your credit card number must be equal to 16")
#     end
#   end

#   def double
#     @odd_numbers = []
#     step = 2
#     @credit_card_number.each_with_index do |number,index|
#       if index % step == 0
#         @odd_numbers << number*2
#       end
#     end
#     @odd_numbers
#   end

#   def sum_all
#     @sum_of_numbers = 0
#     step = 2
#     @credit_card_number.each_with_index do |number,index|
#       if index % step == 1
#          @sum_of_numbers += number
#       end
#     end
#     @odd_numbers.each do |number|
#       if number > 9
#         odd_number_array = number.to_s.split("")
#         odd_number_array #["1" , "0"]
#         another_sum =0
#         odd_number_array.map! do |digits|
#           digits = digits.to_i
#           another_sum += digits
#         end
#         @sum_of_numbers += another_sum
#       else
#         @sum_of_numbers += number
#       end
#     end
#     p @sum_of_numbers
#   end

#   def check_card
#     double
#     sum_all
#     if @sum_of_numbers % 10 == 0
#       p true
#     else
#       p false
#     end
#   end

# end

# credit_card_number = CreditCard.new(1234562343421231)
# p credit_card_number.double
# p credit_card_number.sum_all
# p credit_card_number.check_card

# Refactored Solution


class CreditCard

  def initialize(credit_card_number)
    @credit_card_number = credit_card_number.to_s.split("")
    @credit_card_number.map! do |number|
      number = number.to_i
    end
    if @credit_card_number.length != 16
      raise ArgumentError.new("Your credit card number must be equal to 16")
    end
  end

  def double
    @even_numbers = []
    @credit_card_number.each_with_index do |number,i|
      if i.even?
        @even_numbers<< (number *2)
      end
    end
  end

  def sum_all
    @sum_of_numbers = 0
    @credit_card_number.each_with_index do |number,i|
      if i.odd?
         @sum_of_numbers += number
      end
    end
    @even_numbers.each do |number|
      another_sum = 0
      if number > 9
        even_number_array = number.to_s.split("")
        even_number_array.map! do |digits|
          digits = digits.to_i
          another_sum += digits
        end
        @sum_of_numbers += another_sum
      else
        @sum_of_numbers += number
      end
    end
  end

  def check_card
    double
    sum_all
    @sum_of_numbers % 10 == 0 ? (true) : (false)
  end

end



# Reflection
# What was the most difficult part of this challenge for you and your pair?
# My partner and I had so much trouble refactoring! This challenge was really tough, and there were a lot of things to consider. We couldn't figure out how to separate the integer value into an array of separate integers; we ended up having to turn it into a string, separate each character, then turn it back into an integer. We had to do this multiple times, and couldn't figure out how to refactor that part of the code.

# What new methods did you find to help you when you refactored?
# The ternary method was helpful for the final class method that we defined. We also used .odd? and .even? to determine which index value we were on.

# What concepts or learnings were you able to solidify in this challenge?
# We really had to think about what values we were iterating through, and whether or not that was possible based on the input. For example, we wanted to iterate through each digit in the input integer, but first we had to convert it to something that had a predefined .each method.