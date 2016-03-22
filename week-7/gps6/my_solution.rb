require_relative(STATE_DATA)

# EXPLANATION OF require_relative
#require_relative: Direct to a file in the same directory.
#require: Loads in any file in the application

class VirusPredictor
#Initializing and creating instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calls two other methods in the class

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private
#Compares population density to a number. Depending on the result of that comparison, the number of deaths will change.
#Floor method rounds down to the nearest integer.
#Prints a string
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density

    x = 1

    number_of_deaths = (@population * x).floor
    case @population_density

    when (150...200)
     x = 0.3
    when (100...150)
      x = 0.2
    when (50...100)
      x = 0.1
    when (0...50)
      x= 0.05
    else
      x = 0.4
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#Intializes a counter. Compares pop density to a number, determines the speed of the spread.
#Prints a statement
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    case @population_density
      when  (151...200)
        speed = 1

      when  (100...150)
        speed = 1.5

      when  (50...100)
        speed = 2

      when (0..50)
        speed = 2.5

      else
        speed = 0.5

    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def report(hash)
  hash.each do |state, info|
    states= VirusPredictor.new(state, info[:population_density], info[:population])
    states.virus_effects
  end
end
report(STATE_DATA)



=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The outside hash is made up of a key that is a string, and the value is another hash. The inside hash is made up of a key that is a symbol and a value that is an integer.

What does require_relative do? How is it different from require?
require_relative allows you to use a local path directory, and is generally faster than just using require. Require can call on files from anywhere.

What are some ways to iterate through a hash?
We iterated through our hash using .each.

When refactoring virus_effects, what stood out to you about the variables, if anything?
We noticed that they were continually calling instance variables, which can be accessed throughout the class, and do not have to be made into arguments for each method.

What concept did you most solidify in this challenge?
I really solidified iterating through hashes, and creating a new instance of a class through this iteration.

=end