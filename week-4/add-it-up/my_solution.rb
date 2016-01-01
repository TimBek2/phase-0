# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Ieronim Oltean.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: [Array]
# Output: sum (Interger)
# Steps to solve the problem.
# define method total which takes an array
# iterate over .each object
# add each to sum
# return the sum, not the array

# 1. total initial solution

def total(array)
	sum = 0
	array.each { |a| sum += a }
	return sum
end

#arr = [3,6,8,9]
#p total(arr)



# 3. total refactored solution

def total(array)
	array.inject {|sum, a| a + sum}
end

#arr = [3,6,8,9]
#p total(arr)

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of words
# Output: String of words
# Steps to solve the problem.
# Take array of words
# Iterate each

# 5. sentence_maker initial solution

def sentence_maker(a)
	sum = ""
	a.each {|a| sum += (a + " ")}

	return sum.chomp(" ").capitalize + "."
end
p sentence_maker(["hey", "there", "guy"])

# 6. sentence_maker refactored solution

def sentence_maker(word_array)
	sentence = word_array.join(" ")
	return sentence.capitalize + "."
end

test = ["hello", "how", "are", "you"]

p sentence_maker(test)

