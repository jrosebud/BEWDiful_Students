require "rest-client"
require "json"

def show_message(message)
	puts message
end

def get_input
	gets.chomp
end

def choose_number 
	gets.to_i
end

url = "http://api.espn.com/v1/sports/news/?insider=no&apikey=g23fd5qgbpsvtrpphdrhenm4"
response = RestClient.get(url)
stories = JSON.load(response)
new_story = stories["headlines"]

# displaying stories

espn_stories = []
sports = []
categories = []

#new_story.each do |story|
#	sports << { sport: story["categories"] }
#	espn_stories << { title: story["title"], summary: story["description"], link: story["links"]["web"]["href"], id: story["categories"][0]["sportId"] }
#end

new_story.each do |story|
	espn_stories << { title: story["title"], summary: story["description"], id: story["categories"][0]["sportId"] }
end

# function to put out the story
def display_story(story)
	puts "Title: #{story[:title]}"
	puts "Summary: #{story[:summary]}"
	puts "ID: #{story[:id]}"
	puts ""
end

# method that puts out the list. reference the original array you created.
espn_stories.each do |s|
	display_story(s)
end

#sports.each do |category|
#	sport = category[:sport]
#	sport.each do |category|
#		categories << { category: category["description"], id: category["sportId"] }		
#	end
#	categories.each do |type|
#		
#	end
#end