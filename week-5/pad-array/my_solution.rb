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


# 4. Reflection
