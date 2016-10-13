def iteration_status
  puts "we are about to run the block."
  yield ("hooray!")
  puts "we've finished running the block."
end

iteration_status { |x| puts "this block has run #{x}."}

# Birds Array

birds = [
  "Robin",
  "Bluejay",
  "Woodpecker",
  "Turkey",
  "Terodactyl"
]

birds.each do |the_bird|
  puts "#{the_bird} is a bird."
end

birds.map! do |the_bird|
  the_bird.upcase
end

p birds

# Delete if on Array
birds.delete_if { |the_bird| the_bird[0]=="T"}

p birds


# Animals Hash
animals = {
  "racoon" => "grey",
  "squirrel" => "grey",
  "frog" => "green",
  "deer" => "brown",
  "opossum" => "white"
}

animals.each do |animal, color|
  puts "the #{animal} is #{color}."
end

# Delete if on Array
p animals

animals.delete_if {|animal, color| color == "grey"}

p animals


