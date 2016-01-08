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
