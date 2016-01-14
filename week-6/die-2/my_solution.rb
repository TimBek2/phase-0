# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Random one of these strings when Die#roll is called
# Steps: 
=begin
Initialize
Create object with as many sides as there are objects in array
	If there are no objects in the array, return argument error


Sides
When called, return the number of sides (length of the array)

Roll
When called, randomly select one string and return it
=end

# Initial Solution

class Die
  def initialize(labels_array)
  	if labels_array.length < 1
  		raise ArgumentError.new("Please input some sides")
  	else 
  		@sides = labels_array.length
  end

  def sides
  	p 
  end

  def roll
  end
end



# Refactored Solution








# Reflection