
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times { |i| p "woof" }
  end

  def rollover
    p "*rolls over*"
  end

  def dog_years(integer)
    p integer * 7
  end

  def shake
    p "*shakes hand*"
  end

  def initialise # initialize does run w/out driver code and runs each time .new is called
    # mis-spelling initialize doesn't throw an error, it just doesn't run...
    p "Initializing new puppy instance..."
  end

end

Ellie = Puppy.new

# Driver Code
Ellie.fetch("ball")

Ellie.speak(4)

Ellie.rollover

Ellie.dog_years(10)

Ellie.shake


# In puppy_methods.rb, design and implement your own class below the Puppy class 
# -- anything you'd like, but it should have an initialize method and at least two other instance methods.
# Then do the following:

class Car

  def initialize
    p "Initializing new car instance ..."
  end

  def turn_signals (direction)
    if direction == "left"
      puts "*left signal on*"
    else direction == 'right'
      puts '*right signal on*'
    end
  end

  def car_horn
    puts "Beep beep!"
  end
end

car_database = []


index = 0

# car_count = 1

until index >= 50

  car_instance = Car.new

  # car_instance = "Car Number #{car_count}"

  # car_count += 1

  car_database << car_instance

  index +=1
end

puts car_database

car_database.each do |car|
  puts car.turn_signals("left")
  puts car.car_horn
end

