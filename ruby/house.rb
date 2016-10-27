# Week 6 House Builder Extra Credit Video

# Build a house out of classes

# HOUSE CLASS
# Attributes:
# - rooms (a collection of Room instances)
# Methods:
# - getter for rooms
# - add_room (only allows up to 10 rooms)
# - square_footage (adds up the house's square footage and returns it as an integer)
# - total_value (adds up value of items in all rooms)
# - to_s override
require_relative "room"
require_relative "item" # this doesn't appear to be necessary as room file requires the item file.

class House
  attr_reader :rooms

  def initialize
    @rooms = []
  end

  def add_room(room)
    if @rooms.length < 11
      @rooms << room
      true # this returns true so that driver code can process whether or not this actually happened.
    else
      # puts "Cannot add room."
      false # return false instead of printing something so that driver code can then interpret without user having to see it.
    end
  end

  def total_value
    value = 0
    @rooms.each do |room|
      value += room.total_value
    end
    value
  end

  def square_footage
    sq_footage = 0
    @rooms.each do |room|
      sq_footage += (room.width * room.length)
    end
    sq_footage
  end

  def to_s
      house_str = ""
      @rooms.each do |room|
        house_str << room.to_s.upcase
        house_str << "\n\n"
        room.items.each do |item|
          house_str << item.to_s
          house_str << "\n"
        end
        house_str << "\n"
      end
      house_str
  end

end


#DRIVER CODE
# Make House
house = House.new

# Make living room
living_room = Room.new("Living room", 10, 10)
# puts living_room
piano = Item.new("Piano", "black", 10000)
box = Item.new("cardboard box", "brown", 0)
living_room.items << piano
living_room.items << box
# puts living_room.total_value

# Make kitchen
kitchen = Room.new("Kitchen", 10, 10)
sink = Item.new("sink", "white", 5000)
oven = Item.new("over", "black", 3000)
kitchen.items << sink
kitchen.items << oven

house.add_room(living_room)
house.add_room(kitchen)

puts house
puts house.total_value
puts house.square_footage


# ROOM CLASS
# Attributes:
# - name
# - width
# - length
# - items (a collection of Item instances)
# Methods:
# - getters for items, name, width, length
# - setter for items, name
# - total_value (adds up prices of items)
# - to_s override

# # ITEM CLASS
# Attributes:
# - name
# - color
# - price
# Methods:
# - getters for color, price, name
# - to_s override
