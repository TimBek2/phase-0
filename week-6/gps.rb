# Your Names
# 1) Ryan Salerno
# 2) Tim Beck

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# handle the case where you pass an item that isn't in the library  done
# do something with the leftover remaining_ingredients              done
# turn all leftovers into cookies                                   done
# make leftover cakes or pies if possible                           done


def serving_size_calc(item_to_make, your_ingredients)
  recipes = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  recipes.each do |food|
    if recipes[food] != recipes[item_to_make]
      error_counter -= 1
    end
  end
# I really don't understand how this error counter works. I understand that error_counter is 3 is to correlate to how many recipes it iterates through before turning up an error, but shouldn't the error come if the counter hits 0, thus iterating through all 3 options, not when greater than 0?
  if error_counter > 0
    raise ArgumentError.new("We don't make #{item_to_make}s")
  end

  serving_size = recipes.values_at(item_to_make)[0]
  remaining_ingredients = your_ingredients % serving_size
  
=begin
*******************************************************************************************************************
    Figure out how to get this error to override the message when they can't make one of the selected item
*******************************************************************************************************************
  if your_ingredients < serving_size
    p "You don't have enough ingredients to make #{item_to_make}, how about #{your_ingredients} cookies?"
  end
=end

# This pluralizes the chosen item if you can make more than one of it
  plates = your_ingredients / serving_size
  if plates > 1
    item_to_make = item_to_make + 's'
  end
# This returns a message telling how many cookies you can make with leftover ingredients, or recommends a cake or pie if you have enough ingredients for one of those
  if remaining_ingredients == 0 
    p "Make #{plates} #{item_to_make}"
  elsif remaining_ingredients == 1 
    p "Make #{plates} #{item_to_make} and 1 cookie"
  elsif remaining_ingredients % 5 == 0 
    p "Make #{plates} #{item_to_make} and #{remaining_ingredients / 5} cakes"
  elsif remaining_ingredients % 7 == 0
    p "Make #{plates} #{item_to_make} and #{remaining_ingredients / 7} pie"
  elsif remaining_ingredients > 1
    p "Make #{plates} #{item_to_make} and #{remaining_ingredients} cookies"
  end
end
  
# serving_size_calc('pie', 12)
# serving_size_calc('pie', 19)
# serving_size_calc("pie", 8)
# serving_size_calc('pie', 4)
# serving_size_calc("cake", 5)
# serving_size_calc("cake", 7)
# serving_size_calc("cookie", 1)
# serving_size_calc("cookie", 10)
# serving_size_calc("donut", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
A lot of what can be done to make code more readable is just picking variable names that make it easier to see what is going on, or creating error messages with text you decide so that the user can get a better understanding of what happened.

Did you learn any new methods? What did you learn about them?
We didn't use any new methods for this solution, just a long sequence of if and elsif loops. 

What did you learn about accessing data in hashes? 
We didn't have too much complicated data transformations in this challenge, basically just some math-based logic loops. The only time that we accessed data within the hash was to compare it to the argument passed for the purpose of returning an error, and that code was mostly provided to us in the challenge.

What concepts were solidified when working through this challenge?
I definitely have a solid handle on how the logic loops for extended if/elsif statements need to be structured, and I think I have a good handle on how to create these loops to do repetitive math work for me now. I'm also getting better at naming variables in a way that ends up reading clearly to an outside dev.



=end




