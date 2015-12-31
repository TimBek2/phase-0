#Full name greeting

puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Howdy, #{first_name} #{middle_name} #{last_name}. How are you?"



#New favorite number

puts "What is your favorite number?"
old_favorite = gets.chomp.to_i

new_favorite = old_favorite + 1

puts "Have you considered #{new_favorite}, it's larger and clearly much better."