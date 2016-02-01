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

def super_fizzbuzz(array)
new_arr = []

array.each { |number|
	if number % 3 == 0 && number % 5 == 0
		new_arr.push("fizzbuzz")
	elsif number % 3 == 0
		new_arr.push("fizz")
	elsif number % 5 == 0
		new_arr.push("buzz")
	else
		new_arr.push(number)
	end
}
return new_arr
end

super_fizzbuzz([30, 9, 20, 1])

# Refactored Solution






# Reflection