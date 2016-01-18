#Attr Methods

# I worked on this challenge by myself

# I spent [#] hours on this challenge.

# Pseudocode

# Input: Class NameData takes a name
# Class Greetings creates an instance of name variable 
# Output: Class NameData puts out an instance variable
# Class Greetings has a method that prints a greeting to the name
# Steps: NameData gives reader permission to the variable name, has an initialize method which creates an object with the name attribute.
# Greetings initializes instance of name, a method returns a greeting using the name.

class NameData
	attr_reader :name

	def initialize
		@name = "Tim"
	end
end

# tim = NameData.new
# puts tim.name

class Greetings
	def initialize
		@name = NameData.new
	end

	def hello
		print "Hello #{@name.name}, how you doin?"
	end
end

test = Greetings.new
puts test.hello


# Reflection
=begin

# Release 0

What are these methods doing?
All of the what_is_ methods simply return the values associated with each variable, and the change_my_ methods allow you to assign a new value to each variable. 

How are they modifying or returning the value of instance variables?
Because it is an instance variable denoted with @, it exists within the entire class object. What_is methods just return the value, while change_my methods take and argument and set the variable equal to that. 

# Release 1

What changed between the last release and this release?
The code attr_reader :age was added, and the code from line 24-26 was removed, which was the method to return the value of @age.

What was replaced?
The method what_is_age was replaced with attr_reader :age

Is this code simpler than the last?
Yes, it only uses one line rather than 3, additionally taking away the opportunity to forget to end a method and break the code :)

# Release 2

What changed between the last release and this release?
The code attr_writer :age was added, and the method change_my_age was removed.

What was replaced?
The code attr_writer :age was added, and the method change_my_age was removed.

Is this code simpler than the last?
Yes, as before you took out another method with a single, consistent line of code. 

# Release 3







=end




