#HOUSE MAKER

# Allow the user to create a house,
# then add rooms,
# then add items,

# House can have up to 5 rooms
# Room can have an unlimited number of items

# BUSINESS LOGIC

house = {}

def add_room(place, room_name)
  place[room_name] =[]
  return true if place[room_name].length <= 5  
  return false
end

def add_item(place, room, item)
  # p place[room].class  ## Shows that the place[room] is an array.
  place[room] << item
end

# TEST CODE

# add_room(house, "living room")
# add_room(house, "kitchen")
# puts house

# add_item(house, "living room", "dog")
# puts house

# add_item(house, "living room", "cat")
# puts house

# house = {
  # "room-1" => ["item1", "item2", "item3"]
  # "room-2" => []
  # "room-3" => []
# }

# DRIVER CODE
loop do 
  puts "Type the name of a room to add it to the house.  Or type 'next' when done adding rooms."
  user_room = gets.chomp
  break if user_room == 'next'
  add_room(house, user_room)
  break if false
  p house
end

p house



