# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: create an object and giving it a number 
# Output: nandom number between 1..input_number
# Steps: 
# if input_number <= 1 raise an error
# 

# 1. Initial Solution

class Die
  def initialize(sides) # creates the object 
   unless sides > 1
      raise ArgumentError.new("That number doesn't appear on dice!")
   else
     @sides = sides 
    end

  end
  

  def sides # produce the input number 
    @sides
  end

  def roll # p random number; random method goes here 
    # @sides.rand(1..6) 
    rand(1..@sides)
  end
end 
 
side = Die.new(2) # Die is name of class
p side.inspect
p side.sides
p side.roll
# 3. Refactored Solution







# 4. Reflection