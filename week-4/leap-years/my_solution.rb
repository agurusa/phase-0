# Leap Years

# I worked on this challenge [by myself ].


# Your Solution Below

def leap_year?(year)
  if year % 400 == 0
    p true
  elsif year % 100 == 0
    p false
  elsif year % 4 == 0
    p true
  else
    p false
  end
end