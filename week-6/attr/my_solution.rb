#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: a student name
# Output: a new object is created in the NameData class. This new object should have a student name, and when the method .greet is called on the object, it should greet the student using their name.
# Steps:

# Initialize the NameData class with the name of the student.
#Define a variable that returns the name of the student.

# Create a new class called Greetings.
# Initialize that class with a variable that calls on the NameData class (to call an instance of that class).
# Create a new method in the Greetings class that prints the student's name, and a greeting.


class NameData

  attr_reader :name

  def initialize
    @name = "Aarthi"
  end

end

class Greetings
  def initialize
    @student = NameData.new
  end

  def hello
    p "#{@student.name}, hey there!"
  end

  # I wanted to play around with using attr_accessor, so I added a change_name method:

  # def change_name
  #   sleep 0.8
  #   puts "Would you like to greet a new student?"
  #   @student.name = gets.chomp
  #   hello
  # end

end

greet = Greetings.new
greet.hello
# greet.change_name


# Reflection

#Release_1.rb:
# What are these methods doing?
# The methods are defining variables @age, @name, and @occupation. Individual methods are then responsible for returning those variables, then changing them.

# How are they modifying or returning the value of instance variables?
# They are modifying and returning the value of the instance variables through separate methods for each instance variable.

#Release_2.rb:
# What changed between the last release and this release?
# This release has a reader attribute of :age.

# What was replaced?
# def what_is_age
#   @age
# end

# is now gone. It was replaced by attr_reader :age.
# Is this code simpler than the last?

# This code is a little simpler. Now, you can just return the same value by "calling" the symbol age on the object in the class.

# Release_3.rb:
# What changed between the last release and this release?
# This release has both a reader attribute and writer attribute of :age.

# What was replaced?
# def change_my_age=(new_age)
#   @age = new_age
# end
# was replaced by attr_writer:age

# Is this code simpler than the last?

# Yes. Now, you can change the value of :age by "calling" it on the object, and just setting it equal to something new. For example,
# instance_of_profile.age = 28
# replaced:
# def change_my_age=(new_age)
#   @age = new_age
# end
# instance_of_profile.change_my_age = (28)

# It's more readable and you don't have to create an entirely new method to change data.

# What is a reader method?
# A reader method is a method that gives you the value of an instance variable.

# What is a writer method?
# A writer method is a method that lets you change the value of an instance variable.

# What do the attr methods do for you?
# Attribute methods shorten up your code so you can read and/or change the value of an object. They replace reader/writer methods with a symbol, so you can "call" the symbol on the object in a class and read/write the value.

# Should you always use an accessor to cover your bases? Why or why not?
# No, because an accessor has the ability to change the value outside of the program, even if you need that value to stay constant for that object.

# What is confusing to you about these methods?
# I'm still a little confused about when you should be using attr_ to shorten up code. I'd like to see them used in a few more examples, because right now I can't really imagine them being useful.