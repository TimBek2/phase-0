# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
Input: An Array
Output: An Array with 'fizz', 'buzz', or 'fizzbuzz' substituted in where needed
Steps: 
Define method to take an array as input
Create an empty array
Iterate through the array
If the value is divisible by 3 and 5, add fizzbuzz to new array
If the value is divisible by 3, add fizz to new array
If the value is divisible by 5, add buzz to new array
Otherwise, add the value to new array
Print the new array
=end
# Initial Solution



# def super_fizzbuzz(array)
# new_arr = []

# array.each { |number|
# 	if number % 3 == 0 && number % 5 == 0
# 		new_arr.push("FizzBuzz")
# 	elsif number % 3 == 0
# 		new_arr.push("Fizz")
# 	elsif number % 5 == 0
# 		new_arr.push("Buzz")
# 	else
# 		new_arr.push(number)
# 	end
# }
# return new_arr
# end



# Refactored Solution
def super_fizzbuzz(array)
new_arry = []

array.each_with_index { |number, index|
	if number % 15 == 0
		array[index] = "FizzBuzz"
	elsif number % 3 == 0
		array[index] = "Fizz"
	elsif number % 5 == 0
		array[index] = "Buzz"
	else
		array[index] = number
	end
	}
end




# Reflection
=begin 
What concepts did you review or learn in this challenge?
I had to re-rememeber how to properly iterate through arrays in Ruby, mainly how to properly use the each_with_index method. I found myself wondering if curly braces belonged anywhere after working with JS for two weeks, but it came back fairly quickly. 

What is still confusing to you about Ruby?
I still need to keep working on iterating through arrays and hashes, but it's much more familiar as this solution came to me fairly quickly. 

What are you going to study to get more prepared for Phase 1?
I'm going to spend most of my time focusing on classes, arrays, and hashes. They seem the most valuable, so I want to review arrays and hashes while getting more comfortable with classes. 

=end



