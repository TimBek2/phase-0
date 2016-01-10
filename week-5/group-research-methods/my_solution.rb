# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
=begin
# Person 1's solution
def my_array_finding_method(array,letter)
  new_array = array.dup
  array_result = new_array.grep(/#{letter}/)
  p array_result
  

  end

def my_hash_finding_method(hash, value)
  new_array = []
  hash.each do |k,v|
    if v == value
      new_array << k
    end
  end
  p new_array
end


# Identify and describe the Ruby method(s) you implemented.
#
#
#
=end

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
# .map! executes a given code block on each element in the array, just like .each does, but .map returns an array with the values that the iteration returned, while .each returns the results of the iteration along with the original array. By using a bang (!), we made it update the original array i_want_pets[] instead of creating a new one. 
# .is_a? is a boolean method that returns true if the object is whatever class you pass it. By using Fixnum, we are checking if the object is an integer as opposed to a string. Using it in an if statement allowed us to run a block of code only on objects that are numbers, and use the else statement to return the string results unaltered.
# 

=begin

# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


=end

=begin

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

=end

=begin

# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

=end


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#