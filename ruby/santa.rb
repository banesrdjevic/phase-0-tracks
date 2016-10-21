
# BUSINESS LOGIC

# Santa class
class Santa
  # initialize method that prints "Initializing Santa instance ..."
  def initialize
    p "Initializing Santa instance ..."
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

end

# DRIVER CODE / TEST CODE LOGIC

Clause = Santa.new

Clause.class

Clause.speak

Clause.eat_milk_and_cookies('chocolate chip')
