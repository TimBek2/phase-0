# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: Call the class with a number of sides
# Output: a random number between 1 and the number of sides
# Steps:  Initialize the object
#           If the number of sides is less than 1, return argument error
#         Create instance variable for number of sides
#         
# if input_number <= 1 raise an error
# 

# 1. Initial Solution

class Die
  def initialize(sides) # creates the object 
    if sides < 1
      raise ArgumentError.new("Input a positive integer please")
    end
    @sides = sides 
  end
  

  def sides # return the number of sides for the die
    return @sides
  end

  def roll # return a random number between 1 and number of sides
    return rand(1..@sides)
  end
end 
 
# 3. Refactored Solution







# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An argument error is an error that is raised when an argument other than what the method is expecting is passed to it. They are useful because they could allow you to write code that only accepts certain options as arguments, and if someone inputs the wrong thing, you can inform them instead of just having the code not work. You could even make different error messages for different mistakes.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I learned about argument errors, and being able to designate your own error message, which is very interesting to me. Otherwise, only rand was new in this challenge, and that was fairly well explained thanks to the point-out in the instructions.

What is a Ruby class?
A ruby class is like a blueprint, or a category, and every object in Ruby falls into one. We say an object can be a string, number, boolean, etc - each of those things is a class, or a category of like objects that behave similarly within the language. 

Why would you use a Ruby class?
You can't not use classes in Ruby - every object has a class. You should learn what the functionality for each class is, because then that will help you to write more concise code with minimal steps, and maybe even make it look *magical*

What is the difference between a local variable and an instance variable?
A local variable exists only within the method that it is called in, or if it is called outside of any method, it cannot be used in any methods. An instance variable, on the other hand, is denoted like @variable, and is scoped to the instance (or object), so it exists and stores its value anywhere that that object exists, and it carries its value between occurances when it is called in methods. 

Where can an instance variable be used? 
Instance variables are particularly helpful for creating multiple-step code, particularly when you're creating an object. They allow you to carry data from one method to the next, so you can define it one time and then use a nice variable instead of having to redefine a variable in each method that you want to use it in. 

 
=end







