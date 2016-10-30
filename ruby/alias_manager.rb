
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


# conditionally replace the vowels, check against downcase
# conditionally replace the consonants
# vowel = "aeiou"
# consonant = "bcdfghjklmnpqrstvwxyz"
  # consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  # vowel = ["a", "e", "i", "o", "u"]

def next_letter(letter) # picks up from next_vowel(name[char_index])
  letter = letter.downcase
  consonant = 'bcdfghjklmnpqrstvwxyz'
  vowel = 'aeiou'
  next_letter = ''
    if vowel.include?(letter)
      next_letter << vowel[(vowel.index(letter) + 1)]
    elsif consonant.include?(letter)
      next_letter << (consonant.index(letter) + 1)
    else
      next_letter << " "
    end
  next_letter
end

def first_name_encrypt
  consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "b"]
  vowel = ["a", "e", "i", "o", "u", "a"]
  

end

# return the array to a string, use .join('')
# split the name
# reverse the name
# capitalize the first letter of the first and last name
# return the fake name 
# store the fake name in a list of fake names
# once user hits exit, return the list of fake names / aliases

# split names, rearrange names, add names back together in reverse order.

def translate_name(name) # picks up user_input phrase
  char_index = 0
  translated_name = '' # start building a different string to hold the resulting phrase
  while char_index < name.length
    translated_name << next_letter(name[char_index])# add the letter from "phrase" that was input, into translated response, each new translated character
    char_index += 1
  end
  translated_name # return translated response after loop completes
end

p translate_name(user_input_name)

# store fake names 
# fake_names <<
# fake_names:[]

# Ask the user for a name
# loop do
  # puts "Enter a name you would like to see encrypted or type exit"
    # user_input_name = gets.chomp
    # if name == "exit"
# end


# collect the name
puts "Enter a name you would like to see encrypted or type exit"
user_input_name = gets.chomp.split

# user_input_name = user_input_name.split('')

# split the name into an array of letters, use .split('')
# user_input_name.split('')
# user_input_name.class

fake_names = [] # fake name array of aliases to add to and call later
# call translate_name method with user input
p user_input_name
new_letters = []



