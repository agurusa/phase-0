# I worked on this challenge [with: Dominik ].


# Your Solution Below

def valid_triangle?(a, b, c)
  array = [a, b, c]
  array.sort!
  if a==0 || b ==0 || c == 0
    p false
  elsif a == b && b == c
    p true
  elsif array[2]**2 == (array[1]**2) + (array[0]**2)
    p true
  elsif a + b >c && b + c > a && c + a > b
    p true
  else
    p false
  end
end
