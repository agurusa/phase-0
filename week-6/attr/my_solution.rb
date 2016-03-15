#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

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