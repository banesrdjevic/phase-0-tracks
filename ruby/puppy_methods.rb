
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


end


Ellie = Puppy.new

Ellie.fetch("ball")

Ellie.speak(4)

Ellie.rollover


