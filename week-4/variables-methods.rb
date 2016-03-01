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

#Reflection:

#How do you define a local variable?
#A local variable is defined by:
#local_variable = "parameters of the local variable"

#How do you define a method?
#A method is like a function. It's defined like so:

#def method(argument)
# body of the method/whatever you want the method to do
#end

#What is the difference between a local variable and a method?
#Local variables are a way to store information and access it during different parts of your program. Methods are like mini programs, or functions. They actually do things with information, and can do things with local variables. In this way, local variables are like nouns, and methods are like verbs.

#How do you run a ruby program from the command line?
#You run a ruby program from the command line by typing:
#ruby file.rb
#To successfully run the file, it must be saved as a .rb file.

#How do you run an RSpec file from the command line?
#To run an RSpec file, type:
#rspec spec-file.rb
#To successfully run an rspec file, you have to call the spec file specifically, not the file with your code. It is generally good practice to have these as 2 separate files.

#What was confusing about this material? What made sense?
#I'm still figuring outsome of the arithmetic operations. Setting a seed and using random numbers is a little confusing to me. I can't really figure out why this function would be necessary.

#Links to the challenges:
#https://github.com/agurusa/phase-0/blob/master/week-4/address/my_solution.rb
#https://github.com/agurusa/phase-0/blob/master/week-4/math/my_solution.rb