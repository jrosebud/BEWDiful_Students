# Add to Teddit!
# We want to be able to add stories from the command line

# Deliver this experience:
# 	Welcome the user to Teddit.
# 	Prompt for a story title.
# 	Wait for the users input (bonus: Don't use gets.chomps)
# 	Ask the user to give the story a category.
# 	Wait for a response. 
# 	Show the new story the user added.
# 	Look for repetition and add methods to keep code DRY. 

# Heres an example of what you should see in the terminal when you finish coding.
# 	Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"
# 	Please enter a News story:
# 	=> ***Waits for input*** 
# 	User enters: Bear feels remorse for stealing candy from baby
# 	Please give it a category:
# 	=> ***Waits for input***
# 	User enters: ecological
# 	New story added! Bear feels remorse for stealing candy from baby, Category: Ecological, Current Upvotes: 1

#puts "Welcome to Teddit, yo."
#puts "You want to put a story title here?"
#story = gets.chomp
#print "What category do you want this story in, dude? "
#category = gets.chomp
#puts 'You put in a new story called "' + story + '" in the category ' + category + '. Thanks!'

def ask_question(question)
	print question
	
	gets.chomp # what gets returned from the function
end

# assigning what was returned to a variable
title = ask_question("What is the title of the story, yo? ")
category = ask_question("What category do you want this in? ")

# i'm outputting a title!
puts "Your title is: \"#{title}.\""
puts "The story is in the #{category} category."

#def age_check(age)
#	if age >= 21
#		puts "Have a beer, yo!"
#	else
#		puts "Sorry, get a Zima, punk."
#	end
#end
#
#print "How old are you? "
#age = gets.chomp.to_i
#puts "Your age is #{age}."
#age_check(age)