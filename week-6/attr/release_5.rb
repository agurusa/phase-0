# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end


end

instance_of_profile = Profile.new
p instance_of_profile.age
p instance_of_profile.name
p instance_of_profile.occupation

puts "--changing---"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28
instance_of_profile.name = "Aarthi"
instance_of_profile.occupation = "programmer"

puts instance_of_profile.print_info