
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

