###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the insturctions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game.
# In this game players have three tries to guess a secret number between 1 and 10.
#
# Here are some guidelines to building your game:
#
# Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
#   and that they only have 3 tries to do so.
#
# Functionality:
#  -  Hard code the secret number. Make it a random number between 1 and 10.
#  -  Ask the user for their guess.
#  -  Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#  -  If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#  -  Don't forget to let your players know how many guesses they have left. Your game should say something like
#     "You have X many guesses before the game is over enter a another number"
#  -  If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
#
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

# the function to ask a bunch of questions

def number_question(question)
	print question
	
	gets.chomp
end

# meaty number check function! tries gets passed from the original function, hard coded as 2 because you technically use a turn when you make the first guess.

def number_check(number, tries)
	# variables. num is what the number entered is; magic is the magic number. number is entered as a string, so i gotta chomp it and change to an integer.
	num = number.chomp.to_i
	magic = 3
	# first case: checking to make sure number is between 1-10
	if
		num > 10 || num < 1 && tries != 0
		puts "Did you read the directions? Number's gotta be between 1 and 10! You have #{tries} tries left."
		number = number_question("Pick a number between 1 and 10. ")
		puts "Your number is #{number}."
		number_check(number, tries - 1)
	# second case: guess is larger than the magic number
	elsif
		num > magic && tries != 0
		puts "Too high, dude, try again. You have #{tries} tries left."
		number = number_question("Pick a number between 1 and 10. ")
		puts "Your number is #{number}."
		number_check(number, tries - 1)
	# third case: guess is lower than the magic number
	elsif
		num < magic && tries != 0
		puts "Too low, homeskillet, maybe a larger number. You have #{tries} tries left."
		number = number_question("Pick a number between 1 and 10. ")
		puts "Your number is #{number}."
		number_check(number, tries - 1)
	# fourth case: person is a smartypants who got the number right!
	elsif
		num == magic && tries != 0
		puts "Right on! You're psychic. Now buy a lottery ticket."
	# need a condition in which the player runs out of guesses.
	elsif
		tries == 0
		puts "We're sorry, the game is over. The magic number was #{magic}."
	end
end

# welcome text, asking for player's name.
name = number_question("Welcome to the number game! What's your name? " )
# the rules, yo.
puts "Welcome #{name}! The object of this game is to guess what number the Grand Poobah is thinking of. You have three tries to do it!"
# asking the player hte actual number. this is the variable that gets passed as number for the function
number = number_question("Pick a number between 1 and 10. ")
# telling the player what his/her guess is just to be nice.
puts "Your number is #{number}."
# here's the function!
number_check(number, 2)