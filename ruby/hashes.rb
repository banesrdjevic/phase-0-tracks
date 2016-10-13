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