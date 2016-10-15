# Array Info for 5.2
suitcase_items = []

loop do 
  puts "Enter an item (or type 'exit'):"
  input = gets.chomp
  break if input == 'exit'
  suitcase_items << input
end

puts "Here's your packing list:"
puts suitcase_items

puts "Safe Travels!"

# Hash Practice for 5.2
post = {
  "date" => "6/10/16",
  "title" => "About My Turtle",
  "author" => "Janet Finkle",
  "body" => "I just love my turtle Rudolph!  Today he moved 2 inches and sat in my hand for 5 minutes."
  }

p post["author"] # will print Janet Finkle
post["author"] = "Janet Finkel" # changes the value in the Hash
p post["author"] # now returns Janet Finkel
post["likes"] = 300
p post # will print out the entire hash
p post.keys # prints the keys in a hash
p post.values # prints the values in a hash

# Symbol is a colon followed by a word or string.
# Use symbol for efficiency in programming.  Run faster in Ruby. Saves space.
# Example: name = :Jen
# Or hometown = :san_francisco
# Note: Don't use capitals or spaces in a symbol.
# If you use symbol :key instead of string "key", make sure you access the same way.
# If you use symbol, don't have to use the hash rocket.  Just use colon after the key.

post_option_2 = {
  :date => "6/10/16",
  :title => "About My Turtle",
  :author => "Janet Finkle",
  :body => "I just love my turtle Rudolph!  Today he moved 2 inches and sat in my hand for 5 minutes."
  }

post_option_3 = {
  date: "6/10/16",
  title: "About My Turtle",
  author: "Janet Finkle",
  body: "I just love my turtle Rudolph!  Today he moved 2 inches and sat in my hand for 5 minutes."
  }

design_application = {
  name: "Mike Kors",
  address: "NYC",
  email: "fashionislife@projectrunway.com",
  phone: "612-950-5507",
  blue_1: "Pale",
  blue_2: "Oxford",
  blue_3: "Royal",
  blue_4: "Teal",
  blue_5: "Air_Force",
  paisley: true,
  chevron: false,
  preal_woodsy: false,
  abstract_woodsy: true
  }

p design_application

# update values
design_application[:address] = "NYC, NY"
p design_application

# add whether hired
design_application["hired"] = true
p design_application

# store a key in a variable, then access the hash using the variable?
# returns the value that matches the key stored in the variable
key_test = :phone
p design_application[key_test] 

# Does adding two keys together affect the original hash?
# Can print it and return it, but does not change the original hash.
design_application[:blue_1] + design_application[:blue_2]
p design_application[:blue_1] + design_application[:blue_2]
p design_application



