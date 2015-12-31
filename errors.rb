# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1.5] hours on this challenge.  9:11 PM

# --- error -------------------------------------------------------

 #{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#  errors.rb
# 2. What is the line number where the error occurs?
#  170, or 16. The interpreter says 170 because it's never ended throughout the file, but it should go on line 16.
# 3. What is the type of error message?
#  Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#  There is an unexpected end of input, the interpreter was expecting the keyword end
# 5. Where is the error in the code?
#  The error occurs on either line 170 or 16, because the while loop from line 14 never gets closed with end.
# 6. Why did the interpreter give you this error?
#  The interpreter gave this error because while loops need to have an end to indicate when the loop code is finished.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#  36
# 2. What is the type of error message?
#  Name Error
# 3. What additional information does the interpreter provide about this type of error?
#  'south_park', the object written, has not been defined as a local variable or method, so the computer doesn't know what to do with it.
# 4. Where is the error in the code?
#  Line 36
# 5. Why did the interpreter give you this error?
#  'south_park' hasn't been defined locally as a variable or a method, so it doesn't mean anything to the computer right now. 

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#  51
# 2. What is the type of error message?
#  No Method error
# 3. What additional information does the interpreter provide about this type of error?
#  There's an undefined method, cartman.
# 4. Where is the error in the code?
#  cartman is not a method that the computer is familiar with
# 5. Why did the interpreter give you this error?
#  cartman is not a method that has been defined to the computer, so it doesn't know what to do with it yet. If we defined the method, then the computer would know what to do and there wouldn't be an error. 

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
#  70
# 2. What is the type of error message?
#  Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#  It received the wrong number of arguments in cartmans_phrase, being passed one when it expected none
# 4. Where is the error in the code?
#  On line 66, cartmans_phrase is not written to receive any arguments, so when it is passed one on line 70, it doesn't know what to do.
# 5. Why did the interpreter give you this error?
#  When a method is written to receive an argument and doesn't receive one, or vice versa, it breaks the code just like trying to put a square peg through the circle hole.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
#  89
# 2. What is the type of error message?
#  Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#  It received the wrong number of arguments in cartman_says, receiving no arguments when it expected one
# 4. Where is the error in the code?
#  On line 85, cartman_says is defined as receiving an argument when it is called, offensive_message. When it does not receive this argument, the code breaks.
# 5. Why did the interpreter give you this error?
#  The argument is defined as needing an argument, thus it must have one when it is called or it will not work. He needs to have an offensive message to say.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
#  110
# 2. What is the type of error message?
#  Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#  It received the wrong number of arguments, receiving one when it expected two.
# 4. Where is the error in the code?
#  On line 110, the method is called with one argument, the lie, but it wanted a name to be passed as well. 
# 5. Why did the interpreter give you this error?
#  The method was written to receive two arguments, but was only given one. 

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#  125
# 2. What is the type of error message?
#  Type Error
# 3. What additional information does the interpreter provide about this type of error?
#  The string can't be coerced into being a number
# 4. Where is the error in the code?
#  The author of this code is attempting to multiply the number five by "Respect my authoritay!", which is not possible.
# 5. Why did the interpreter give you this error?
#  "Respect my authoritay!" is a string, and therefore is not something that an object can be multiplied by. By switching the order of the two objects, you could get a code that will return "Respect my authoritay!" five times, but in the current order, the interpreter cannot complete the operation.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#  140
# 2. What is the type of error message?
#  Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#  Divided by zero
# 4. Where is the error in the code?
#  The function that is written is mathematically impossible. You cannot divide by 0. 
# 5. Why did the interpreter give you this error?
#  Mathematically, nothing can be divided by zero, so this isn't possible. 20 KFC's divided by 0 people doesn't mean anything. 0 KFC / 20 people would mean that there is no KFC for anybody to have.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#  156
# 2. What is the type of error message?
#  Load Error
# 3. What additional information does the interpreter provide about this type of error?
#  Cannot load such file
# 4. Where is the error in the code?
#  There is no file cartmans_essay.md for the interpreter to find
# 5. Why did the interpreter give you this error?
#  The code require_relative tells the interpreter to look for another file in the directory, and the code breaks when that file does not exist. 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
	
Which error was the most difficult to read?
The first error was the most difficult to read, because I thought that the file broke when it said that the error was at the very bottom of the page after we completed the example question

How did you figure out what the issue with the error was?
I actually had to ask on Slack for help, partly because I had seen other people have the same issue/question and then had that question taken to private messaging before the answer could be revealed. Ultimately, it was kind of a trick question, which I wish I had gotten, but I also don't think it should be the first question after the example. 

Were you able to determine why each error message happened based on the code? 
Yes. After the issue with the first question, it became very easy for me. 

When you encounter errors in your future code, what process will you follow to help you debug?
For now, utilizing the color coding that comes with Sublime Text is by far the most useful skill I've found, but I also think that after that initial check, just running the code through the interpreter and debugging one line at a time seems to work alright. Once you learn to read the errors, it's pretty informative with regards to fixing your code. 
	
=end







