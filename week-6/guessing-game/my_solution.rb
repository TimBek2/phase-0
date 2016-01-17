# Build a simple guessing game


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Call the 
# Output:
# Steps:


# Initial Solution

# class GuessingGame
  # def initialize(answer)
  # 	@answer = answer
  # end

# # Make sure you define the other required methods, too
#   def guess(guess)
#   	@guess == guess
#   	if guess > @answer
#   		return :high
#   	elsif @guess == @answer
#   		return :correct
#   	elsif @guess < @answer
#   		return :low
#   	end
#   end

#   def solved?
#   	if @guess == @answer
#   		return true
#   	else
#   		return false
#   	end
#   end


# end






# Refactored Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

# Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if guess > @answer
  		return :high
  	elsif guess < @answer
  		return :low
  	else
  		return :correct
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end


end





# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables are able to hold the values for different traits of the object and carry them from one method to the next, while instance methods that you create will define the actions that the object can take. In this case, there were variables saving the correct answer and the guess, and two methods to compare the guess to the answer and to determine if the problem has been solved. 

When should you use instance variables? What do they do for you?
Instance variables are used any time you need to carry information from one method to the next. They allow you to store information in an object that won't disappear as soon as that one method is finished. Often our work until this point has only required information to be operated upon and then the answer is passed - if you ever need to save that answer and access it later, instance variables are likely your choice. 

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is using logic gates in order to have an input cycle through your code and return the correct output. By this point in the curriculum, I'm not having any trouble with flow control anymore. Sometimes there will be a roadblock when the logic gates aren't ordered correctly, which usually means that I accidentally put my catch-all clause at the front of the statement and it's skipping over everything else, but that's quickly caught at this point. 

Why do you think this code requires you to return symbols? What are the benefits of using symbols?	
Symbols are useful when you are using a lot of "boilerplate" text in your code. Symbols, unlike other variables, only occur in one place, and every time you call it, you are calling that specific object. It's useful in cases with lots of repetitive text because it will prevent the computer from using up unnecessary memeory by storing 50 (or 5000) different variables named "high" when they all indicate the same thing. This problem could have that situation, because the answer could be a million, and there could be a million guesses up till then. By using symbols, it's as if the computer could simply compare the two numbers and then point at high, low, or correct, rather than having to write out "high", "low" or "correct" and save that result for each guess. 


	
=end







