# Build a simple guessing game


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Call the 
# Output:
# Steps:


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#   	@answer = answer
#   end

# # Make sure you define the other required methods, too
#   def guess(guess)
#   	@guess = guess
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
  # def initialize(answer)
  	attr_reader :answer
  # end

# Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
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