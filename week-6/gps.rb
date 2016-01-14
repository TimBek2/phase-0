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
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter -= 1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("We don't make #{item_to_make}s")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = your_ingredients % serving_size
  
=begin

  if your_ingredients < serving_size
    p "You don't have enough ingredients to make #{item_to_make}, how about #{your_ingredients} cookies?"
  end
=end

  plates = your_ingredients / serving_size
  if plates > 1
    item_to_make = item_to_make + 's'
  end
  
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
  
serving_size_calc('pie', 12)
serving_size_calc('pie', 19)
serving_size_calc("pie", 8)
serving_size_calc('pie', 4)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
serving_size_calc("donut", 5)

#  Reflection