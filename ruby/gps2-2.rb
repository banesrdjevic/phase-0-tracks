# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: take user string and use .split method 
# create method which takes array as an 
# set default quantity
# set quanties for each item 
# convert array into hash of our list 
# print the list to the console [can you use one of your other methods here?]
# output: is a hash
def create_list(items, list_quanitity=1)
  items_array = items.split(" ")
  list = {} 
  items_array.each do |item| 
      list[item] = list_quanitity
  end
  list
end
# Method to add an item to a list
# inputs: list hash, item name and optional quantity
# steps: take item and quantity and add to existing hash
# output: updated hash (updated list)
def add_item(list, item_name, list_quanitity=1)
  list[item_name] = list_quanitity
  list
end
# Method to remove an item from the list
# inputs: list hash, item name
# steps: find item by index number, delete list item
# output: updated hash (updated list)
def delete_item(list, item_name)
  list.delete(item_name)
  list
end
# Method to update the quantity of an item
# inputs: list hash, item name
# steps: find item key by name, update corresponding value
# output: updated hash (updated list)
def update_quantity()
end
# Method to print a list and make it look pretty
# input: most recent hash/list
# steps: iterate over and print out hash
# output: list item and quantity
def print_list()
    
end
#DRIVER CODE
items = "carrots apples cereal pizza"
create_list(items) 
list_output= create_list(items)
list = delete_item(list_output, "carrots")
puts "THIS IS THE #{list}!"