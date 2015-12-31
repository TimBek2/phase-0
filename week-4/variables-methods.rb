#Full name greeting

puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Howdy, #{first_name} #{middle_name} #{last_name}. How are you?"



#New favorite number

puts "What is your favorite number?"
old_favorite = gets.chomp.to_i

new_favorite = old_favorite + 1

puts "Have you considered #{new_favorite}, it's larger and clearly much better."



#Address challenge (4.3.1) File location
#https://github.com/TimBek2/phase-0/blob/master/week-4/address/my_solution.rb



#Math challenge (4.3.2) File location
#https://github.com/TimBek2/phase-0/blob/master/week-4/math/my_solution.rb




=begin


*****Reflection*****


How do you define a local variable?
	You define a local variable by using:

	variable = "this is my variable"

How do you define a method?
	You define a method with the code 
	def method_name(argument)
		method_content
	end

What is the difference between a local variable and a method?
	A local variable points to an object - a string, number, etc. Depending on context, they could be the nouns of a sentence. A method, on the other hand, is a block of code that gets called on an object, kind of like the verbs of a sentence. 

How do you run a ruby program from the command line?
	You run a ruby program (which ends in .rb) from the command line by accessing the directory that the file is in and writing "ruby filename.rb"

How do you run an RSpec file from the command line?
	You run an RSpec file from the command line by accessing the directory that the RSpec file is in and writing "rspec filename.rb"

What was confusing about this material? What made sense?
	I had apparently forgotten a lot of the syntax for Ruby in the past few weeks of html and CSS, so this challenge took me a long time to get through. Also, since codecademy doesn't do any color scheming, it's hard to know by sight if you've written something right, which is such an advantage once you get it down. The math parts made easy sense to me, since I'm naturally gifted at math, but I still spent a good amount of time just working through syntax and chasing bugs.
=end