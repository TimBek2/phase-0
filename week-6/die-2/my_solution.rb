# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Create a dice object with each string representing one side, or Arg error if empty array
# Steps: Evaluate length of array, create object with that many sides
# Iterate through array and assign each string to one side
# 


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     @sides = labels.count
#       raise ArgumentError.new("Please enter at least one side name") if @sides == 0
#   end

#   def sides
#     return @sides.to_i
#   end

#   def roll
#     roll = rand( 0..( @sides - 1 ))
#     return @labels[roll]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.count
      raise ArgumentError.new("Please enter at least one side name") if @sides == 0
  end

  def sides
    return @labels.count
  end

  def roll
    roll = rand( 0..( @sides - 1 ))
    return @labels[roll]
  end
end


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
It took me a while to figure out how to get the side labels to stick, but once I figured out how to use them, there wasn't too much difference between this task and the last one. For a while, I struggled to visualize the object being created and couldn't figure out how to write the code, but eventually I had an aha moment. 

What does this exercise teach you about making code that is easily changeable or modifiable? 
A lot of what I used in this challenge was borrowed from my solution to the last dice challenge - this reminds me to make code that is well explained especially for myself - if I want to come back and alter something, it's good to leave breadcrumbs so I can remember how all the moving parts fit together. 

What new methods did you learn when working on this challenge, if any?
I used .count for the first time, but that isn't exactly new, and I had seen it before, it just hadn't been implemented.

What concepts about classes were you able to solidify in this challenge?  
I learned how to iterate an array of names into being the attributes for the object, instead of just having an integer that indicated how many sides it has. This is much more powerful, since these objects can now have essentially infinite possibilites for attribute lists.




  
=end







