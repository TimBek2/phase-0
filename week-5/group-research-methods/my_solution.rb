# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 2
def my_array_modification_method!(array, number)
  array.map! do |x| 
    if x.is_a? Fixnum
      p x += number
    else
      p x
    end
  end
end

def my_hash_modification_method!(hash, number)
  hash.keys.each do |k|
    hash[k] += number
  end
  p hash
end

# Identify and describe the Ruby method(s) you implemented.
# .map! executes a given code block on each element in the array, just like .each 
# does, but .map returns an array with the values that the iteration returned, 
# while .each returns the results of the iteration along with the original array. 
# .is_a? is a boolean method that returns true if the object is whatever class you 
# pass it. By using Fixnum, we are checking if the object is an integer as opposed
# to a string. Using it in an if statement allowed us to run a block of code only
# on objects that are numbers, and use the else statement to return the string
# results unaltered.
# hash.keys.each is a series of methods strung together to create a command that
# will pass a code block to all of the keys in a hash. Since in this case all of
# the values are integers, pet ages, I was able to create a simple code block to
# increase all of the values 

# Teach others to use the methods
# For the array:
# .map! and .map are very straightforward as said above, they are just like .each
# but return a new array as opposed to the result and then the old array. By using
# a bang (!), we made it update the original array i_want_pets[] instead of
# creating a new object.
# I used .is_a? to determine if the value is a number or a string, since those are
# in the original array. If it's a number, then it is passed the block to increase
# the number by whatever argument was input. If it's not a number, we need to
# remember to return or p the object so that it is in the result, rather than just
# returning the increased numbers and nothing else. 

# For the hash:
# This was done in basically one statement. I could have done:
# hash.each do { |key, value| hash[key] += number }
# but since we're only updating values, I could append the key to the method and
# write a code block that only mentions what we care to change. 

# Tricks for Ruby Docs
# Like everyone else I don't consider myself to have any tricks yet. My general
# strategy is to skim the object page for any methods that look like they may be
# a solution to what I want. If I don't have any luck there, I'll go to google
# and try to do general searches for what I'm trying to do, as well as using find
# on the page to see if any keywords I come up with will appear in the descriptions.
# Once I find some suggestions there, I don't look into the full forum post - I
# go find that method in the docs and try to figure out how to use it myself. 








