# Pad an Array

# I worked on this challenge with James Boyd

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, an integer (minimum size for output array), filler object
# What is the output? (i.e. What should the code return?) A new array
# What are the steps needed to solve the problem?
# 1. Compare size of array to minimum size
#   a. If it is bigger or equal to min_size, return original array
# 2. When array is smaller than minimum size, pad array with the default value until it is minimum size
#   b. 
# 3. Return new array
#


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  end
  # refactor for a cooler method than while loop
  # use an index for looping
  i = array.length
  while i < min_size
    array.push value
    i += 1
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  # we need to copy the "array" argument so it ain't destructive
  copied_array = array.clone
  if copied_array.length >= min_size
    return copied_array
  end
  # refactor for a cooler method than while loop
  i = array.length
  while i < min_size
    copied_array.push value
    i += 1
  end
  # return the new, updated copy of "array"
  copied_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  return array if array.length >= min_size 
  (min_size - array.size).times { array.push value }
  array
end

def pad(array, min_size, value = nil) #non-destructive
  copied_array = array.clone
  return copied_array if copied_array.length >= min_size
  (min_size - array.size).times { copied_array.push value }
  copied_array
end

=begin
4. Reflection

Were you successful in breaking the problem down into small steps?
Yes. This was the first time a pair and I had used pseudocode extensively at the start of a problem, and it was very helpful at breaking the challenges down.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We were successful at translating it into what we thought we wanted, and then we had to go to the ruby docs to find a method that actually did what we wanted. There were a few rabbit holes, going down strategies that didn't end up working, but in the end we were able to stick mostly to our pseudocode when we got to our solutions.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution didn't work because we were incorrectly using if statements and while loops. When we thought we were properly setting up an iteration, we were actually hitting some variables twice so it would get itself stuck in a loop of adding one to get to a number which has also been increased by one, thus never ending. Running the rspec showed us what we were doing wrong, and after trying different ideas we found one that works. 

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, we were able to cut our code down from 10 lines and 12 lines, respectively, to 3 and 4 lines respectively. My pair even went back later and found a way to reduce the destructive challenge to only one line. 

How readable is your solution? Did you and your pair choose descriptive variable names?
I think it's very readable. We used relevant names for variables, and used methods that we thought were clearer, for example .clone on an array instead of .dup (duplicate).

What is the difference between destructive and non-destructive methods in your own words?
A destructive method takes the original input and alters it, returning to you the result of your code. A non-destructive method, on the other hand, takes the original input and operates on it, returning the result of the code in a new object and preserving the original. 
=end