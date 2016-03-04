# Factorial

# I worked on this challenge [with: Alicia Briceland ].


# Your Solution Below


def factorial(number)
  array = [number]
  if number == 0 || number == 1
    return 1
  end
  loop do
      number -= 1
      array << number
    if number <= 1
      break
    end
  end
  product = 1
  array.each do |x|
    product = product * x
  end
  return product
end
