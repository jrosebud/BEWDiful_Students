class StoryBoard
	attr_accessor :stories
	
	@@stories = []
	
	def initialize(story)
 		@story = story
 	end
	
	def self.add_story(story)
		@@stories << story
	end
	
	def self.stories
				
		@@stories.map do |story|
			"Story: #{story.title}, Category: #{story.category}, Upvotes: #{story.upvotes}"
		end
		
	end
end