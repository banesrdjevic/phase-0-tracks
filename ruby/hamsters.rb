
# 4.3 Mandatory Pairing: Data Types, IRB, and User Input
# Patrick Hoban
# Jeremy Badillo

puts "What is your hamster's name?"
  h_name = gets.chomp

scale_entry = false
until scale_entry
  puts "On a scale of 1 to 10 how loud is this hamster?"
  h_loud = gets.to_i
  if h_loud == 1 
    scale_entry = true
  elsif h_loud == 2 
    scale_entry = true
  elsif h_loud == 3 
    scale_entry = true
  elsif h_loud == 4 
    scale_entry = true
  elsif h_loud == 5 
    scale_entry = true
  elsif h_loud == 6 
    scale_entry = true
  elsif h_loud == 7 
    scale_entry = true
  elsif h_loud == 8
    scale_entry = true
  elsif h_loud == 9
    scale_entry = true
  elsif h_loud == 10
    scale_entry = true
  else
    puts "Please enter a valid number between 1 and 10"
  end
end

puts "What color is the hamster?"
  h_color = gets.chomp

h_adopt_entry = false
until h_adopt_entry
  puts "Is it a good candidate for adoption (y/n)?"
  h_adoptable = gets.chomp
  if h_adoptable == "y"
    h_adopt_entry = true
  elsif h_adoptable == "n"
    h_adopt_entry = true
  else
    puts "Please answer with only y or n"
  end
end

puts "How old is the hamster?"
  h_age = gets.to_i
  if h_age == 'N/A'
    h_age = nil
  end

puts "Hamster Info"
puts "#{h_name} is a great name!"
puts "Hamster noise level is #{h_loud}"
puts "#{h_name} has fur that is #{h_color}"
puts "Hamster is adoptable - #{h_adoptable}"
puts "Hamster is estimated to be #{h_age} years old"
