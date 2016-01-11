# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input?
# An array of objects


# What is the output? (i.e. What should the code return?)
# An array of the mode or modes if they all show up the same number of times

# What are the steps needed to solve the problem?
# Method that takes in an object as the parameter
# Create a new hash, default counter = 1
# Iterate over the array, take the object in the array and set it as the key in the hash
# IF we encounter a key that exists, increase the value by 1
# Sort the hash by its values, getting the highest values first
# Return the keys of the highest values in hash
# http://stackoverflow.com/questions/13005393/ruby-find-the-keys-of-the-largest-values-of-a-hash
# get max in the array


# 1. Initial Solution
def mode(arr)
    hash = Hash[arr.map {|x| [x, 0]}]
      arr.each do |item|
        if hash.has_key?(item)
          hash[item] += 1
        end
      end
    max = hash.values.max
    new_hash = Hash[hash.select { |k, v| v == max}]
    return new_hash.keys
end

# 3. Refactored Solution
# Not sure which methods will help in this case.



# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# Our solution used hashes because we saw that we needed to save both the object from the array and how frequently it occured. 

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# Yes, every time I use pseudocode again I start getting better at it, and it starts getting closer to being in the form to how it will actually look as code.

# What issues/successes did you run into when translating your pseudocode to code?
# The pseudocode code always makes plenty of conceptual sense, but then actually executing it with proper ruby syntax takes much longer than anticipated because we don't know which methods work best in different situations.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used arr.map on the initial array to convert it to a hash with a default value, and then we used .each to iterate through the array using .has_key? in an if statement to increase the counter if it encountered an object again. 
