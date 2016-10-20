# House Maker
# Allow the user to create a house
# then add rooms
# then add items

# House can have up to 5 rooms
# Room can have an unlimited number of items

# BUSINESS LOGIC

def add_room_to_house!(house, room_name)
  return false if house.keys.length == 5 # another version or way to write if else statement
  house[room_name] = [] # this creates a blank array under the house hash 
  # and fills in the title with whatever is entered for room name
  return true
end

def add_item_to_room!(house, room_name, item_name)
  house[room_name] << item_name
end

house = {}

# USER INTERFACE

def print_house(house)
  puts "--------------------"
  puts "Current House Configuration:"
  house.each do |room_name, items| # room name is the key, items is the value
  puts "#{room_name}: #{items}"
  end
  puts "--------------------"
end



# TEST CODE
rooms = ["Living Room", "Kitchen", "bedroom", "bathroom", "bedroom_2", "bedroom_3"]

rooms.each do |room|
  room_added = add_room_to_house!(house, room)
  add_item_to_room!(house, room, "cat") if room_added
end

p house
