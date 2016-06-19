# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    #This is the constructor method
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    # Calls the predicted_deaths and speed_of_spread methods to generate output
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # Predicted deaths is solely based on population density
    # Takes 3 variables and determines predicted deaths
    #if @population_density >= 200
    #  number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
    #  number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
    #  number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
    #  number_of_deaths = (@population * 0.1).floor
    #else
    #  number_of_deaths = (@population * 0.05).floor
    #end

    case @population_density
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak" 

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # Takes a population density and determines the speed of spread of a virus
    
    speed = 0.0

    #if @population_density >= 200
    #  speed += 0.5
    #elsif @population_density >= 150
    #  speed += 1
    #elsif @population_density >= 100
    #  speed += 1.5
    #elsif @population_density >= 50
    #  speed += 2
    #else
    #  speed += 2.5
    #end

    case @population_density
    when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do | key, value |
  #state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end


#=======================================================================
# Reflection Section

# 1. The differences in the hashes is that main hash is using a string for a key and the inner hash is using a symbole for a key.
# 2. require_relative allows you to import code from another file.  require_relative lets you specify a relative path and is built on the require method.  
#    The require method lets you import code from the same working directory
# 3. You can iterate through a hash with a loop or a each-do iterator method
# 4. We did not need parameters passed into the helper methods because we were using instance variable from the class already
# 5. Iterating through hashes.