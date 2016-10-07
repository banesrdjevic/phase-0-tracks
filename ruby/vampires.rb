
puts "What is your name?"
  app_name = gets.chomp

puts "How old are you?"
  age = gets.to_i

puts "What year were you born?"
  birth_yr = gets.to_i

garlic_answered = false
until garlic_answered
  puts "Our company cafeteria serves garlic bread.  Would you like to try some? (y/n)"
  likes_garlic = gets.chomp
  likes_garlic.downcase!
  if likes_garlic == "y" || likes_garlic == "yes"
    enjoys_garlic = true
    hates_garlic = false
    garlic_answered = true
  elsif likes_garlic == "n" || likes_garlic == "no"
    enjoys_garlic = false
    hates_garlic = true
    garlic_answered = true
  else
    puts "Please answer with only y or n"
  end
end

health_answered = false
until health_answered
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  wants_insurance = gets.chomp
  wants_insurance.downcase!
  if wants_insurance == "y" || wants_insurance == "yes"
    insurance_desired = true
    waives_insurance = false
    health_answered = true
  elsif wants_insurance == "n" || wants_insurance == "no"
    insurance_desired = false
    waives_insurance = true
    health_answered = true
  else
    puts "Please answer with only y or n"
  end
end

# Release 2
# age right
current_yr = 2016
if current_yr - birth_yr = age
  correct_age = true
  incorrect_age = false
else
  correct_age = false
  incorrect_age = true
end

# Check for vampire_name

if app_name = "Drake Cula"
  vampire_name = true
elsif app_name = "Tu Fang"
  vampire_name = true
else
  vampire_name = false
end
  
# enjoys_garlic = true or false
# insurance_desired = true or false

if vampire_name = true
  puts "Definitely a vampire."
elsif incorrect_age && (hates_garlic && waives_insurance)
  puts "Almost certainly a vampire."
elsif correct_age && (enjoys_garlic || insurance_desired)
  puts "Probably not a vampire."
elsif incorrect_age && (hates_garlic || waives_insurance)
  puts "Probably a vampire."
else
  puts "Results inconclusive."
end

# wolves_like_sunshine = true
# wolves_like_garlic = true
# vampires_like_sunshine = false
# vampires_like_garlic = false

# wolves_like_garlic && wolves_like_sunshine
# wolves_like_garlic || vampires_like_garlic
# wolves_like_garlic && vampires_like_garlic
# wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
# (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
# vampires_like_garlic

# the exclamation point is called a bang operator.  Seems to return the opposite result.  
# If something is true, it returns false.
# !vampires_like_garlic
# !(wolves_like_sunshine && wolves_like_garlic)