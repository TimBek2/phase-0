# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: .split(" ") split the string into values
# put those values into a hash (from array)
  
# [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash of items and quantity; key = item; value = quantity

#list_of_items = "banana apple pear starfruit"

def make_list(list_of_items)
  x = list_of_items.split(" ")
  $old_list = Hash.new(0)
  
  x.each {|item| $old_list[item] = 0 }
  p $old_list
  # hash["item3"] = 2 
  # x.each (accessing every value from the array) converting each value to a key 
  #new_hash.each {|x, y| y = 0 }

end

make_list("banana apple pear starfruit")
#$old_list = "banana apple pear starfruit"


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# output: 
def add_to_list(new_item, quantity)
  #addition = { new_item => quantity }
  addition = Hash.new
  addition[new_item] = quantity
  new_list = addition.merge($old_list.to_h)
  #p new_list
end

p add_to_list("apples", 6 )


# Method to remove an item from the list
# input: argument parameter
# steps:see if the input matches any keys, and if it does delete they key
# output: new list, with item removed

def remove_from_list(item_to_rmv)
  item_to_rmv.to_str
  updated_list = Hash.new
  updated_list = $old_list.to_h
  #updated_list.delete_if {|key, value| key == item_to_rmv}
  if updated_list.include?(item_to_rmv) == true 
    #p "test"
    #p item_to_rmv
    #p $old_list
    p updated_list.delete(item_to_rmv)
    p updated_list.each {|key, val| p key, val}
    #p updated_list
  else 
    p "that item isn't on the list"
  end
  #if $old_list.to_h.include?(item_to_rmv) == true
   #   updated_list.delete(item_to_rmv)
    #  updated_list = $old_list.to_h
  #else
 #   p "that item isn't on the list"
  #end
  
  
end

remove_from_list("banana")






# Method to update the quantity of an item
# input: hash with existing key and new value
# steps: 
# output: new list with updated quantity

def update_quantity(item, new_quantity)
  if $old_list.to_h.include?(item) == true
    $old_list[item] = new_quantity
    p $old_list
  else
    p "that item isn't on the list"
  end
  
end

update_quantity("apple", 9)
# Method to print a list and make it look pretty
# input:
# steps:
# output:
def print_list
  $old_list.to_h
  p "Sooooo, you have"
  $old_list.each {|key, val| p "#{val} #{key}s" }
  p "Wow. It must feel good to be so loaded."
end

print_list


=begin
  
What did you learn about pseudocode from working on this challenge?
When I initially thought about pseudocode when I first learned about it, I thought it was a waste of time because the code we were working on was simple. In this challenge, I learned that it can actually help the research process, because you'll break down the problem into pieces which you can then look up and piece together. 

What are the tradeoffs of using Arrays and Hashes for this challenge?
Hashes were much more useful for most of the problems in this challenge, because we had both a key and value pair most of the time while we were working through it. However, you need to be able to convert back and forth based on what other methods are returning to you and what you want to do. 

What does a method return?
A method returns whatever the value of its last statement is, unless you explicitly use the return command. 

What kind of things can you pass into methods as arguments?
Anything can be an argument, it depends on what the method is defined to accept as an argument.

How can you pass information between methods?
You can call methods within each other, or you can use global variables to carry information from one method defininition to the next.

What concepts were solidified in this challenge, and what concepts are still confusing?
Hashes and arrays are still a little confusing, but really it's more related to general unfamiliarity to the whole space - I don't know the syntax of any of this stuff fluently yet, so it's still a jerky process.  
end