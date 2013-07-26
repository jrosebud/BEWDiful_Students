require_relative 'lib/story.rb'
require "rest-client"
require "json"

def show_message(message)
	puts message
end

def show_menu
	show_message "Choose a sport by typing in a number:"
	show_message "1. All Sports/Latest News"
	show_message "2. Baseball"
	show_message "3. Basketball"
	show_message "4. Football"
	show_message "5. Golf"
	show_message "6. Hockey"
	show_message "7. Soccer"
	show_message "8. Tennis"
end

def get_input
	gets.chomp
end

def choose_number 
	gets.to_i
end

def sport_choice(choice)
	url = "http://api.espn.com/v1/sports/#{choice}/news/?insider=no&apikey=g23fd5qgbpsvtrpphdrhenm4"
	response = RestClient.get(url)
	document = JSON.load(response)
	new_story = document["headlines"]
	
	stories = new_story.map do |story|
		Story.new(story["title"], story["description"], story["links"]["web"]["href"])
	end
	
	puts choice.capitalize + " Stories \n\n"
	stories.each do |story|
	  show_message story.display_story
	end
	
	more_stories
end

def choose_sport
	number = choose_number
	if number == 1
		sport_choice("")
	elsif number == 2
		sport_choice("baseball")
	elsif number == 3
		sport_choice("basketball")
	elsif number == 4
		sport_choice("football")
	elsif number == 5
		sport_choice("golf")
	elsif number == 6
		sport_choice("hockey")
	elsif number == 7
		sport_choice("soccer")
	elsif number == 8
		sport_choice("tennis")
	else
		show_message "Invalid choice. Make sure you enter a number from 1-8, or that you haven't entered a letter."
		show_menu
		choose_sport
	end
end

def more_stories
	show_message "Would you like to read more stories? (y/n)"
	input = get_input.downcase
	if input == "y"
		show_menu
		choose_sport
	elsif input == "n"
		show_message "Thanks for reading ESPN!"
	else
		show_message "Invalid choice."
		more_stories
	end
end

show_message("Welcome to ESPN. Catch up on the latest sports news.")
show_menu
choose_sport