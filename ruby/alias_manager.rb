
# Take a spy real name
# (e.g., "Felicia Torres") and creates a fake name
# 1. Swapping the first and last name.
# 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# Need two alphabet strings to use
# 1 vowels
# 2 consonants

# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?


alphabet = "abcdefghijklmnopqrstuvwxyz"

# split names, rearrange names, add names back together in reverse order.






# Notes from 5.3

letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

# iterate through the array with .map
letters.map! do |letter|
# or use new_letters = letters.map do |letter|
  puts letter
  letter.next # evaluates to whatever last command is
end

puts "After .map call:"
p letters