
# Release 3 How many employees will be processed?
puts "How many employees will be processed?"
  employee_count = gets.to_i

app_count = 0
while app_count < employee_count

# start survey questions
# question 1
puts "What is your name?"
  app_name = gets.chomp

# Check for vampire_name
if app_name == "Drake Cula"
  vampire_name = true
elsif app_name == "Tu Fang"
  vampire_name = true
else
  vampire_name = false
end
  
# continue questions
# question 2
puts "How old are you?"
  age = gets.to_i

# question 3
puts "What year were you born?"
  birth_yr = gets.to_i

# Release 2
# age right - check questions 2 and 3
current_yr = 2016
if current_yr - birth_yr == age
  correct_age = true
  incorrect_age = false
else
  correct_age = false
  incorrect_age = true
end

# question 4
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

# question 5
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

# release 4 allergies
allergies = false
until allergies
  puts "List an allergy and press return.  If all allergies have been listed type done and press return."
  known_allergen = gets.chomp
  if known_allergen == "sunshine"
    allergies = true
  elsif known_allergen == "done"
    allergies = true
  else
  end
end

# enjoys_garlic = true or false
# insurance_desired = true or false
# survey results
# add known allergen result

if known_allergen == "sunshine"
  puts "Probably a vampire."
  app_count +=1
elsif vampire_name == true
  puts "Definitely a vampire."
  app_count += 1
elsif incorrect_age && (hates_garlic && waives_insurance)
  puts "Almost certainly a vampire."
  app_count += 1
elsif correct_age && (enjoys_garlic || insurance_desired)
  puts "Probably not a vampire."
  app_count += 1
elsif incorrect_age && (hates_garlic || waives_insurance)
  puts "Probably a vampire."
  app_count += 1
else
  puts "Results inconclusive."
  app_count += 1
end

end

puts "Actually, never mind!  What do these questions have to do with anything?  Let's all be friends."

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