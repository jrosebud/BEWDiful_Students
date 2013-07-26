class Story
	attr_accessor :title, :summary, :link
	
	def initialize(title, summary, link)
		@title = title
		@summary = summary
		@link = link
	end
	
	def display_story
		"Title: #{title}\nSummary: #{summary}\nLink: #{link}\n\n"
	end
end