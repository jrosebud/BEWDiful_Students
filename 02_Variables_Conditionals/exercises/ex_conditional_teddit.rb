# Use your completed latest veersion of Teddit. 
# Or Copy the code from the strings_exercise_SN_solution.rb
#
# New Teddit Feature! If the Story is about cats multipy the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.

#For example:
# "Cats frolic inspite of a tuna shortage" should give you 5 times the upvotes!

def ask_question(question)
	print question
	
	gets.chomp # what gets returned from the function
end

# assigning what was returned to a variable
title = ask_question("What is the title of the story, yo? ")
category = ask_question("What category do you want this in? ")
votes = ask_question("How many upvotes does this story have? ")

# i'm outputting a title!
puts "Your title is: \"#{title}.\""
puts "The story is in the #{category} category."

#count upvotes, yo

if category.downcase == "cats"
	upvotes = votes.to_i * 5
	puts "Cats get five times the upvotes! Your story now has #{upvotes} upvotes!"
elsif category.downcase == "bacon"
	upvotes = votes.to_i * 8
	puts "Bacon gets eight times the upvotes! Your story now has #{upvotes} upvotes!"
else
	upvotes = votes.to_i
	puts "Your story is so sad. It only has #{upvotes} upvotes."
end