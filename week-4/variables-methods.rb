puts 'Full Name Greeting Exercise'

puts 'What\'s your first name?'
first_name= gets.chomp
puts 'What\'s your middle name?'
middle_name= gets.chomp
puts 'What\'s your last name?'
last_name= gets.chomp
puts 'Oh, hai ' + first_name +' '+ middle_name+' ' + last_name + '! :) '

puts 'Bigger Better Number Exercise'

puts 'What\'s your favorite number?'
number_string= gets.chomp
bigger_number_as_integer = number_string.to_i + 1
bigger_number_string = bigger_number_as_integer.to_s
puts number_string +' can\'t be your favorite number! ' + bigger_number_string +' is way better!'