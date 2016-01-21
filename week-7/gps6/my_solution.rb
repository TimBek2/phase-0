# Virus Predictor

# I worked on this challenge with: 
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # This is what runs when we call VirusPredictor.new, creates the object with state information
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # This method runs the code that is defined in our private methods and returns their results
  def virus_effects
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
    death_toll(@population_density, @population, @state)
  end

  
  private
    # Death toll is taking the population density, polulation, and state, and determining how many people will die and how quickly they will die, and returning a statement with this information. :(
  def death_toll(population_density, population, state)
    speed = 0.0
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).to_i
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).to_i
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).to_i
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).to_i
      speed += 2
    else
      number_of_deaths = (@population * 0.05).to_i
      speed += 2.5
    end
       puts "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  # This takes three arguments provided by State_Data and applies a long if/else (conditional) statement to determine the number of deaths based on population density, and then prints a statement with the estimated amount of deaths in the given state.
  # def predicted_deaths(population_density, population, state)
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  # puts " and will spread across the state in #{speed} months.\n\n"
  
#end
  # This takes two arguments from State_Data and then uses a conditional statement to determine speed of spread based on population density, and then uses puts to add a statement to the predicted_deaths method result that gives the estimated number of months for the disease to spread. 
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#string or block
STATE_DATA.each do |state, state_data|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section
=begin
	
What are the differences between the two different hash syntaxes shown in the state_data file?
The parent hash uses a hashrocket to denote key and value, and then the value of each of those hash entires is in turn another hash, which has keys and values just separated with a comma. 

What does require_relative do? How is it different from require?
Require relative loads the content of another file within this file. The filepath for #require starts at the root directory, but require_relative begins at the location of the current file, so the path you give is a relative filepath. 

What are some ways to iterate through a hash?
We used .each to iterate through the hash, which logic built using conditional if statements, but other enumerables are possible, as well as things like .times loops.

When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables in all of the methods were the same, and the only variable that determined fundamental changes in any forumula was population density, so we were able to combine all of the methods into one singular method that returned death rate and rate of spread at the same time, drawing from both total population and population density. 

What concept did you most solidify in this challenge?
How to write a method in driver code that will iterate through a class, rather than writing a method within the class to iterate. 
	
=end






