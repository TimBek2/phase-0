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

# Release 1

What are these methods doing?
All of the what_is_ methods simply return the values associated with each variable, and the change_my_ methods allow you to assign a new value to each variable. 

How are they modifying or returning the value of instance variables?
Because it is an instance variable denoted with @, it exists within the entire class object. What_is methods just return the value, while change_my methods take and argument and set the variable equal to that. 

# Release 2

What changed between the last release and this release?
The code attr_reader :age was added, and the code from line 24-26 was removed, which was the method to return the value of @age.

What was replaced?
The method what_is_age was replaced with attr_reader :age

Is this code simpler than the last?
Yes, it only uses one line rather than 3, additionally taking away the opportunity to forget to end a method and break the code :)

# Release 3

What changed between the last release and this release?
The code attr_writer :age was added, and the method change_my_age was removed.

What was replaced?
The code attr_writer :age was added, and the method change_my_age was removed.

Is this code simpler than the last?
Yes, as before you took out another method with a single, consistent line of code. 

# Final Reflection

What is a reader method?
A reader method is a method that provides access to a class attribute. It creates an instance variable that other methods can access the value of. 

What is a writer method?
The writer method is like the reader method, but it allows you to change the value of the variable instead of access it. 

What do the attr methods do for you?
The attr methods allow you to quickly access or change a class attribute succinctly. The reader method uses the code attr_reader :variable, while the writer method uses the code attr_writer :variable. 

Should you always use an accessor to cover your bases? Why or why not?
Using an accessor can be helpful because it can help to infer the intent of a variable or method, but I would hesitate to say that they're useful from covering bases standpoint. 

What is confusing to you about these methods?
At first I tried to use the writer method for the final challenge in my solution, but I couldn't figure out how to get an object to initialize with my name as it's @name value, and then run the code properly. I'll need to keep working on how these operate. 


=end

