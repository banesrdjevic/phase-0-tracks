# 6.4 MODULES

#RELEASE 1

# module Shout
  # we'll put some methods here soon, but this code is fine for now!
# end

# module Shout
  # def self.yell_angrily(words)
    # words + "!!!" + " :("
  # end

  # def self.yell_happily(words)
    # words + "!" + ":)"
  # end
# end

# DRIVER CODE

# p Shout.yell_angrily("Screw you")
# p Shout.yell_happily("Good Morrow")


# RELEASE 3

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Trump
  include Shout
end

class Trump_Supporters
  include Shout
end

#DRIVER CODE

trump = Trump.new

supporters = Trump_Supporters.new

p trump.yell_angrily("The wall just got 10 feet higher")
p supporters.yell_happily("Yay, we're part of a fascist cult")
p trump.yell_happily("Look at her, I don't think so")
p supporters.yell_angrily("The media and this election are rigged")

