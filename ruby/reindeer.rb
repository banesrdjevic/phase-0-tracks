class Reindeer
  # attr_reader :location
  # attr_accessor :name # without this, line 53 won't work

  def initialize(name)
    @name = name
    @location = "the North Pole"
  end

  def take_off(altitude)
    puts "#{@name} took off."
    puts "#{@name} ascended to #{altitude} feet."
  end

  def land(location)
    puts "#{@name} landed safely in #{location}."
    @location = location
  end

  def about
    puts "Name: #{@name}"
    puts "Location: #{@location}"
  end

# getter methods making priv
  def name # allows line 50 and 54 to function
    @name
  end

  def location # allows line 50 and 54 to function
    @location
  end

# setter methods
  def name=(new_name)
    @name = new_name
  end
  
end

# Way shown in video on 6.3, called about attribute instead of using getter and setter methods
reindeer = Reindeer.new("Blitzen")
reindeer.about
reindeer.take_off(3000)
reindeer.land("Bombay")
reindeer.about

reindeer = Reindeer.new("Rudolph")
reindeer.about
reindeer.take_off(3000)
reindeer.land("Paris")
reindeer.about

# Second video in 6.3 allows for use of setter and getter videos...
reindeer = Reindeer.new("Dasher")
puts "#{reindeer.name} is in #{reindeer.location}."
reindeer.take_off(3000)
reindeer.land("Cape Town")
reindeer.name = "The Reindeer Formerly Known as Dasher"
puts "#{reindeer.name} is in #{reindeer.location}."


