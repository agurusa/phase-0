# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below


def get_grade(average)
  if average < 60
  p "F"
  elsif average < 70 && average >= 60
  p "D"
  elsif average < 80 && average >= 70
  p "C"
  elsif average < 90 && average >= 80
  p "B"
  else average < 101 && average >= 90
  p "A"
  end
end