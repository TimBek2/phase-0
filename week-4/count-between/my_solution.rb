# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0
#  ^^This means use array.length I think^^
#
# Your Solution Below

=begin

***** This one didn't work... *****

def count_between(list_of_integers, lower_bound, upper_bound)
	count = 0
  	list_of_integers.sort!
  	list_of_integers.each { |int|
  		if int < lower_bound || int > upper_bound
  			return 0
  		else 
  			count += 1
  		end
  	}
  	p count
end
=end

def count_between(list_of_integers, lower_bound, upper_bound)
	range = (lower_bound..upper_bound)
	return 0 if lower_bound > upper_bound
	list_of_integers.select { |int| range.include?(int)}.length
end

# test = [-1, 5, 9, 12]
# p count_between(test, 0, 10)