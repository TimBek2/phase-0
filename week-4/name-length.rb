puts "What is your first name?"
first_name = gets.chomp
puts "what is your middle name?"
middle_name = gets.chomp
puts "what is your last name?"
last_name = gets.chomp

name_length = first_name.length + middle_name.length + last_name.length

puts "Did you know there are #{name_length} characters in your name, #{first_name} #{last_name}?" 