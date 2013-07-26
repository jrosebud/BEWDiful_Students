# remember, @ denotes an instance variable

class Employee
	attr_accessor :first_name, :last_name
	
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end
	
	def full_name
		"#{first_name} #{last_name}"
	end
end

# you can override methods above a class. in this case, you can call initialize again to call the proper number of variables
# in line 32, note that you can call a method defined in an inherited class so you don't have to write stuff all over again.
# super - another method. it's like calling initialize on the method above you.
# subclasses and superclasses = child class and parent class
# if defined in different files, a child must require its parent.

class Manager < Employee
	attr_accessor :title
	
	def initialize(first_name, last_name, title)
		@title = title
		
		super(first_name, last_name)
	end
	
	def full_name_with_title 
		"#{full_name} (#{title})"
	end
end

puts Manager.new("Robert", "Ross", "Chickens").full_name_with_title
puts Manager.new("Robert", "Ross", "Chickens").full_name