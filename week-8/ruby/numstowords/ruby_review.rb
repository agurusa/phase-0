# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# 1. create a hash for numbers and words


# Initial Solution

hash = {
  1=> "one",
  2=> "two",
  3=> "three",
  4=> "four",
  5=> "five",
  6=> "six",
  7=> "seven",
  8=> "eight",
  9=> "nine",
  10=> "ten",
  11=> "eleven",
  12=> "twelve",
  13=> "thirteen",
  14=> "fourteen",
  15=> "fifteen",
  16=> "sixteen",
  17=> "seventeen",
  18=> "eighteen",
  19=> "nineteen",
  20=> "twenty"
}


def word(num, hash)
  if num < 13
    p hash[num]
  elsif num < 20 && num > 13
    if num == 15
      root = hash[num-10][0...-2] + "f"
    else
      root = hash[num - 10]
    end
  p root + "teen"

  end
end

word(16, hash)





# Refactored Solution






# Reflection