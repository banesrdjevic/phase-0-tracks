
# BUSINESS LOGIC

# Santa class
class Santa
  # initialize method that prints "Initializing Santa instance ..."
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    p "Initializing Santa instance ... #{@gender}, #{@ethnicity}, #{@age}"
  end

  # speak method that will print "Ho, ho, ho! Haaaappy holidays!"
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  # eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter 
  # and prints "That was a good <type of cookie here>!" 
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  # celebrate birthday, should add 1 year to birthday
  def celebrate_birthday
    @age += 1
  end

  # get_mad_at should change the order of the reindeer array
  # ---------------------------
  def get_mad_at(reindeer_name)
    #Reindeer ranking array most preferred to least preferred
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    # Reassign Reindeer to last place
    reindeer_ranking.delete(reindeer_name)
    reindeer_ranking.push(reindeer_name)
    puts reindeer_ranking
  end

  # setter method for @gender
  def gender=(new_gender)
    @gender = new_gender
  end

end

# DRIVER CODE / TEST CODE LOGIC

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

puts "The following santas are now included..."

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

Clause = Santa.new("male", "white")
Clause.class
Clause.speak
Clause.eat_milk_and_cookies('chocolate chip')
Clause.celebrate_birthday
Clause.get_mad_at("Vixen")

# See reindeer.rb for more info

# class Reindeer
  # def initialize(name)
    # @name = name
  # end
# end

# reindeer = Reindeer.new("Blitzen")
# reindeer.name

