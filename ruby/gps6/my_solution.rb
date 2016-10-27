# Virus Predictor

# I worked on this challenge [by myself, with: Dennis Marchetti].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# Telling the program that you need the data inputs from the state_data.rb file.
# Require is pulling in a method or software that is part of Ruby itself, installed and available in your machine.
# Require_Relative is specific to a file that you want to access.

require_relative 'state_data'

class VirusPredictor
  # initializing an instance class

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # pulling from two other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # private methods cannot be called from outside of a class.
  # use private methods when you don't want methods visible to an API.
  private
  # floor is returning the largest integer less or equal to float.
  # predicting deaths based on population density range and unknown multiplier.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case 
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
      else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # based on population density the method is estimating the number of months it will take to spread across a state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case
      when @population_density >= 200 then speed += 0.5 
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#Release 4: Method for 50 state report

# report = {}
# STATE_DATA.each do |i| 
#   report << VirusPredictor.new(STATE_DATA[])

# }

STATE_DATA.each do |state, population|
  # puts state
  # puts population
  # state = VirusPredictor.new(state, STATE_DATA[i][:population_density], STATE_DATA[i][:population])
  state_predictor = VirusPredictor.new(state, population[:population_density], population[:population])
  state_predictor.virus_effects
end

#=======================================================================
# Reflection Section
# GPS 3.1 RELEASE 8 - REFLECTIONS
# Difference in hash syntaxes is that the one for population_density: 94.65, is easier to write.
# 
# EXPLANATION OF require_relative
# Telling the program that you need the data inputs from the state_data.rb file.
# Require is pulling in a method or software that is part of Ruby itself, installed and available in your machine.
# Require_Relative is specific to a file that you want to access.

# You can iterate through a hash using a while loop, or using the .each or .map functions.
# Missed this part of virus effects at first... the instance variables are available without needing to be input as arguments.
# Concept most solidified was definitely the ways to iterate through a hash.
# Starting to dig into JS this week, it's sad how much I already started to forget about what we learned in week 5.  It was a good revisit of the material.


