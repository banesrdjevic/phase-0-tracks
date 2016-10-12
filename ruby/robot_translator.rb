# Robot Translator
# If a letter is capitalized and it's in the first half of the alphabet, it becomes "bloop".
# Otherwise, if a letter is capitalized or it's the letter "e", it becomes "buzz".
# If it's not a letter at all, it becomes "boing".
# Otherwise, it becomes "beep".
# "Happy Halloween!" => "bloopbeepbeepbeepbeepboing..."

# BUSINESS LOGIC

def translate_char(char) # picks up letter from phrase[char_index] on line 29
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  halfway = alphabet.length / 2
  is_capitalized = (char.upcase == char) # check if letter is capitalized and if true, add to variable
  if alphabet.index(char.downcase) == nil # check if not a letter at all.  alphabet.is_it_in_string(input_character.in_non_capital_version)
    "boing" # then replace char w/ boing
  elsif is_capitalized && (alphabet.index(char.downcase) + 1) <= halfway # check if capital and char place in alphabet is less than halfway
    "bloop" # then replace char w/ bloop
  elsif is_capitalized || char == "e" # my idea instead of char == "e", alphabet.index(char.downcase) = 4
    "buzz"
  else
    "beep"
  end
end

def translate_phrase(phrase) # picks up user_input phrase from line 40
  char_index = 0
  translated_response = ""  # start building a different string to hold the resulting phrase
  while char_index < phrase.length
    translated_response << translate_char(phrase[char_index])# add the letter from "phrase" that was input, into translated response, each new translated character
    char_index += 1
  end
  translated_response # return translated response after loop completes
end

# USER INTERFACE
loop do 
  puts "Enter a phrase to translate (or type 'q' to quit):"
  user_input_phrase = gets.chomp
  break if user_input_phrase == "q"
  puts translate_phrase(user_input_phrase)
end
# best practice not to print within a method
# best practice to articulate expectation of code before running in test.
# best practice to put user interface at bottom and business logic at top.  Comment out each.
