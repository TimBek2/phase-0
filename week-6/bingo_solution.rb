# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create an array with those letters
  # Take a random object from that array and set it to variable
  # Take a random number from 1 - 100 and set it to number variable
  # Return letter and number 

# Check the called column for the number called.
  # [0,1,2,3,4]
  #  B I N G O     ==>  Each index value corresponds to one letter of the Bingo board. 
  # If letter is B, check if number exists in 0th index of each subarray
  # If letter is I, check if number exists in 1st index of each subarray
  # If letter is N, check if number exists in 2nd index of each subarray
  # If letter is G, check if number exists in 3rd index of each subarray
  # If letter is O, check if number exists in 4th index of each subarray

# If the number is in the column, replace with an 'x'
  # If number and column/index match, replace value with " X "

# Display a column to the console
  # Column B - Display 0th index to the console, each on a separate line to form a column
  # Column I - Display 1st index to the console, each on a separate line to form a column
  # Column N - Display 2nd index to the console, each on a separate line to form a column
  # Column G - Display 3rd index to the console, each on a separate line to form a column
  # Column O - Display 4th index to the console, each on a separate line to form a column

# Display the board to the console (prettily)
  # Display the 1st row - parent array index 0
  # Display the 2nd row - parent array index 1
  # Display the 3rd row - parent array index 2
  # Display the 4th row - parent array index 3
  # Display the 5th row - parent array index 4

# Initial Solution

# class BingoBoard

#   attr_reader :bingo_board

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     letters = ['B','I','N','G','O']
#     @letter = letters.sample
#     @number = rand(1..100)
#     @play = "#{@letter}#{@number}"
#     p @play
#   end




# def check
#   @bingo_board.each { |row|
#     case @letter
#     when 'B'
#       row[0] = 'X' if row[0] == @number
#     when 'I'
#       row[1] = 'X' if row[1] == @number
#     when 'N'
#       row[2] = 'X' if row[2] == @number
#     when 'G'
#       row[3] = 'X' if row[3] == @number
#     when 'O'
#       row[4] = 'X' if row[4] == @number
#     end
#   }
#   puts 
#   p @bingo_board[0]
#   p @bingo_board[1]
#   p @bingo_board[2]
#   p @bingo_board[3]
#   p @bingo_board[4]
# end

#   def column(letter)
#     case letter
#     when 'B'
#       @bingo_board.each { |column| 
#         puts column[0]
#       }
#     when 'I'
#       @bingo_board.each { |column|
#         puts column[1]
#       }
#     when 'N'
#       @bingo_board.each { |column|
#         puts column[2]
#       }
#     when 'G'
#       @bingo_board.each { |column|
#         puts column[3]
#       }
#     when 'O'
#       @bingo_board.each { |column|
#         puts column[4]
#       }
#     end
#   end
# end


# Refactored Solution

class BingoBoard

  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def call
    letters = ['B','I','N','G','O']
    @letter = letters.sample
    @number = rand(1..100)
    @play = "#{@letter}#{@number}"
    p @play
  end

  def check
    @bingo_board.each { |row|
      (@letter = 'B' && row[0] == @number) ? 
        row[0] = 'X' : 
        row[0]
      (@letter = 'I' && row[1] == @number) ? 
        row[1] = 'X' : 
        row[1]
      (@letter = 'N' && row[2] == @number) ? 
        row[2] = 'X' : 
        row[2]
      (@letter = 'G' && row[3] == @number) ? 
        row[3] = 'X' : 
        row[3]
      (@letter = 'O' && row[4] == @number) ? 
        row[4] = 'X' : 
        row[4]
    }
    puts
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end


#*************************************************
  # This was a failed idea...


  # def column(letter)
  #   letter == 'B' ?
  #     puts @bingo_board.each { |row|
  #       row[0] :
  #       row[0]
  #     }

  #   letter == 'I' ?
  #     puts @bingo_board.each { |row|
  #       row[1] :
  #       row[1]
  #     }

  #   letter == '' ?
  #     puts @bingo_board.each { |row|
  #       row[] :
  #       row[]
  #     }

  #   letter == '' ?
  #     puts @bingo_board.each { |row|
  #       row[] :
  #       row[]
  #     }

  #   letter == '' ?
  #     puts @bingo_board.each { |row|
  #       row[] :
  #       row[]
  #     }
#*************************************************



  def column(letter)
    case letter
    when 'B'
      @bingo_board.each { |column| 
        puts column[0]
      }
    when 'I'
      @bingo_board.each { |column|
        puts column[1]
      }
    when 'N'
      @bingo_board.each { |column|
        puts column[2]
      }
    when 'G'
      @bingo_board.each { |column|
        puts column[3]
      }
    when 'O'
      @bingo_board.each { |column|
        puts column[4]
      }
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
# new_game.column('G')

#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding this challenge was much harder for me, because it took me a while to visualize how the problem was going to be solved. However, once I had gotten through the abstract parts of it, the pseudocode itself was easy to write. I like how my style has developed, it's slowly becoming more normalized regarding not having too much code-speak in it, but also not being too abstracted from what I'm thinking to actually be useful for coding. 

What are the benefits of using a class for this challenge?
By using a class, it is easier to a.) use a consistent game board from an array set in driver code, which helps while we're learning how to get the program up and running, but would also allow this code to work for multiple people playing together, each with a different board. 
b.) actually have two different methods that can communicate with each other (#call and #check),

How can you access coordinates in a nested array?
I used .each to iterate through the parent array, and then accessed specific indexes for the arrays within.

What methods did you use to access and modify the array?
I used reassignment with = to modify the array, after iterating with .each with logic using the ternary operator. 

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I learned about .fill for this assignment, but upon using it I decided to stick with using = instead, since I was already trying to play with the ternary operator and didn't want to throw more unknowns into the mix. 

How did you determine what should be an instance variable versus a local variable?
I used instance variables for information that would have to be passed throughout the whole game, such as the game board and square called. Variables that wouldn't be passed, such as local placeholder variables for the methods and the given letter for the #column method, were local variables instead. 

What do you feel is most improved in your refactored solution?
I successfully implemented the ternary operator, which took a little trying on my part. It's not particularly clear, and the consensus from the Ruby forums on the Internet seem to lean towards it being inferior to the various flavors of if/then statements. 



  

  
=end



