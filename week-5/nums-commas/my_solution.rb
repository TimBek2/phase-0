# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A string that contains the integer with separating commas if necessary - 1000 => 1,000
# What are the steps needed to solve the problem? 
# Define method that takes an integer
# Return the number.to_s if num.length is less than 3
# If it's greater than 3, convert number to a string and insert comma every 3rd digit
# Remember that commas add a character to the string
# 
# 1. Initial Solution
def separate_comma(number)
	number = number.to_s
		if number.length < 4
			return number
		else
		i = -1
		counter = 0
		while i.abs < number.length - counter
			if i % 3 == 0
				number = number.insert( i - 1 - counter, ',')
				counter += 1
			else
			end
		i -= 1
		end
		return number
		end
end



# 2. Refactored Solution
def separate_comma(number)
  number = number.to_s
  if number.length <= 3
    return number
  else
  i = -1
  counter = 0
  length_of_number = (number.length - counter)

  while i.abs < length_of_number
      comma_location = (i - 1 - counter)
      if i % 3 == 0
        number = number.insert(comma_location, ',')
        counter += 1
      else
      end
  i -= 1
  end
  return number
  end
end

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
At first I thought two possible options were to find a way to break the integer into arrays of three digits each, and then print those as a string separated by commas, but I hit a bunch of roadblocks initially trying to get the initial integer into arrays that wouldn't fill with nil for missing places on the largest triplet (ie 10000000). This problem seemed simple as you read and pseudocoded it, but creating working logic gates was a much greater challenge than I expected.

Was your pseudocode effective in helping you build a successful initial solution?
It was helpful to create the initial framework of the method, but creating the loop to insert the comma was incredibly difficult. 

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
In both challenges I learned about the .abs method for numbers in ruby, which returns the absolute value. This was helpful to create a variable that worked with the counter when numbers had more than 3 digits, but didn't break the code if they had 3 or less. I tried do go in a signficantly different direction for my refactored solution because I didn't think I could improve it much, but everything ended up being a dead end without using RegExp. In the end all I really did was add a new variable name to make comma placement more clear. 

How did you initially iterate through the data structure?
I used an if statement to remove any numbers that had 3 or fewer digits, and then a while statement to iterate through every three digits and insert a comma. 

Do you feel your refactored solution is more readable than your initial solution? Why?	
Only slightly. It has a more clearly named variable, which is helpful at breaking up the numbers in the densest part of the code, but I didn't shorten the code at all. 
	
end









