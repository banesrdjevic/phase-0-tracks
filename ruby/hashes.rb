
# Suitcase Items Example from Video
# suitcase_items = []

# loop do 
  # puts "Enter an item (or type 'exit'):"
  # input = gets.chomp
  # break if input == 'exit'
  # suitcase_items << input
# end

# puts "Here's your packing list:"
# puts suitcase_items

# puts "Safe Travels!"


# Client Details Program
# Create Hash for client details.
client_details = {}

# Ask user for info
puts "What is your name?"
client_details[:name] = gets.chomp

puts "How old are you?"
client_details[:age] = gets.to_i

puts "How many children do you have?"
client_details[:children] = gets.to_i

pets_entered = false
until pets_entered
  puts "Do you have any pets? (y/n)"
  pets = gets.chomp
    if pets.downcase == "y" || pets.downcase == "yes"
      client_details[:pets] = true
      pets_entered = true
    elsif pets.downcase == "n" || pets.downcase == "no"
      client_details[:pets] = false
      pets_entered = true
    else
      puts "Sorry, I didn't get that."    
    end
end

puts "What is your ideal decor theme?"
client_details[:decor_theme] = gets.chomp

# personal test / delete after validation
# p client_details

# print hash back out for user
puts "Here is what I've gathered about your preferences so far."
p client_details.values

# ask for additional changes
changes_complete = false
until changes_complete
  puts "Are there any changes you would like to make to your answers? (y/n)"
  change_desired = gets.chomp
    if change_desired.downcase == "y" || change_desired.downcase == "yes"
      puts "Which answer would you like to change? (name, age, children, pets, decor_theme or none)"
      change = gets.chomp
      change = change.to_sym
      puts "How would you like to answer the question now?"
      new_answer = gets.chomp
      client_details[change] = new_answer
    elsif change_desired.downcase == "n" || (change_desired.downcase == "none" || change_desired.downcase == "no")
      changes_complete = true
    else 
      puts "Sorry, I didn't understand."
  end
end

# print updated version of the hash
p client_details





