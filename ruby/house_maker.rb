# House Maker
# Allow the user to create a house
# then add rooms
# then add items

# House can have up to 5 rooms
# Room can have an unlimited number of items

# BUSINESS LOGIC

# def parse_room_input(room_name)
  # add code to clean up user input
# end

def add_room_to_house!(house, room_name)
  return false if house.keys.length == 5 # another version or way to write if else statement
  house[room_name] = [] # this creates a blank array under the house hash 
  # and fills in the title with whatever is entered for room name
  return true
end

def add_item_to_room!(house, room_name, item_name)
  house[room_name] << item_name # adds items as the value, room remains as key in house hash
end

house = {}

# USER INTERFACE

def print_house(house)
  puts "--------------------"
  puts "Current House Configuration:"
  house.keys.each_with_index do |room_name, index| # .keys is array of room names, index replaces items as the value
  # keys is the room name, each with index is the index of each room
  puts "#{index} - #{room_name}: #{house[room_name]}" # replaced items with the equivalent house[room_name]
  end
  puts "--------------------"
end

# Let the user add rooms
can_add_rooms = true
# Stop loop when rooms cannot be added
while can_add_rooms
  # Get a room name from the user
  puts "Type the name of a room to add (or type 'done'):"
  room_name = gets.chomp
  # If the user is done, stop loop
  break if room_name == 'done'
  # Otherwise, add room to house
  can_add_rooms = add_room_to_house!(house, room_name)
  if !can_add_rooms
    puts "Sorry, that's too many rooms!"
  end
  print_house(house)
end

# Let the user add items to rooms
# In an infinite loop:
loop do
  # Ask the user for the number of the room they want to add items to
  puts "Enter the number of the room to add an item to (or type 'done'):"
  inputted_index = gets.chomp
  # If the user is done, break
  break if inputted_index == 'done' # done is referred to as a sentinel value
  # Sentinel Values are when you check for a weird user input
  # Otherwise, add the item to the room
  room_index = inputted_index.to_i
  puts "Enter item to add: "
  item_to_add = gets.chomp
  add_item_to_room!(house, house.keys[room_index], item_to_add) # house.keys returns array of rooms, then use brackets [] to call for specific room using index
  # print house
  print_house(house)
end


# TEST CODE
# rooms = ["Living Room", "Kitchen", "bedroom", "bathroom", "bedroom_2", "bedroom_3"]

# rooms.each do |room|
  # room_added = add_room_to_house!(house, room)
  # add_item_to_room!(house, room, "cat") if room_added
# end

# p house
