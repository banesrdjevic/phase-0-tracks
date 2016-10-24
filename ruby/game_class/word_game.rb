# Word Guessing Game

#BUSINESS LOGIC
class WordGame
#Behaviors / Methods
  attr_reader :winning_phrase, :guess_count, :previous_guesses
# Initialize
# Input: winning_phrase,
# Steps: set @guess_count = 0, set @winning_phrase = winning_phrase
# Output: @guess_count and @winning_phrase
  def initialize(winning_phrase)
    @winning_phrase = winning_phrase
    @guess_count = 0
    @previous_guesses = []
  end

#change_to_dashes
# Input: winning_phrase
# Steps: cycle through winning_phrase and store in new variable
# Output: dashed_phrase
  def change_to_dashes
    winning_phrase.tr(x, '-') 
    dashed_phrase = winning_phrase
    dashed_phrase
  end

# check_guess_and_count
# Input: current_guess, array of previous_guesses, 
# Steps: create array to store previous_guesses, check current_guess against previous guesses stored in the array, if equal, don’t increment guess count
# Output: @guess_count
  def check_guess_and_count(current_guess)
  end

# check_word
# Input: winning_phrase, current_guess
# Steps: check if winning_phrase = current_guess
# Output: true false value for match
  def check_word(current_guess)
  end

# check_letter
# Input: winning_phrase, phrase w/ dashes (previous_guesses), letter from user 2 (current_guess)
# Steps: check if phrase contains letter, change dash to letter,
# Output: dashed_phrase, true false value for match
  def check_letter(current_guess)
  end
end

# Variables: 
# winning_phrase
# previous_guesses (array)
# current_guess
# game
# dashed_phrase

#DRIVER CODE
puts "Hello and Welcome to Word Guess Game!"
game = WordGame.new
# 2 Users
# User 1 enters phrase
puts "User 1 please enter a secret phrase"
winning_phrase = gets.chomp

# convert phrase to series of dashes to show user 2
# User 2 begins to guess
# letter or word?
# if word call method to check word
# if letter call method to check letter
# if letter is correct, the dash is replaced by the letter
# Make # of guesses possible equal to word length
# If guess is the same as prev, guess does not count, 
# - store guesses and iterate through an array

# If letter is correct, 
# win message if winning
# lose message if losing

puts "Congrats! You're a winner!"

puts "Wah, wah, wah... you LOSE.  Game Over."


# game class example for reference

# class CupGame
#   attr_reader :guess_count
#   attr_reader :is_over
  
#   def initialize
#     @cups = ["ball", "empty", "empty"]
#     @guess_count = 0
#     @is_over = false
#   end
  
#   def shuffle
#     @cups.shuffle!
#   end
  
#   def check_cup(index)
#     @guess_count += 1
#     if @cups[index] == "ball"
#       @is_over = true
#     else
#       false
#     end
#   end
# end

# # user interface

# puts "Welcome to the Cup Game!"
# game = CupGame.new

# puts "Shuffling cups ..."
# game.shuffle

# while !game.is_over
#   puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
#   guess = gets.chomp.to_i
#   if !game.check_cup(guess - 1)
#     puts "Nope! Try again."
#   end
# end

# puts "You won in #{game.guess_count} guesses!"