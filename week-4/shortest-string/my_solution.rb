# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

=begin

****This one didn't work, it won't return nil for an empty array :( ****

def shortest_string(list_of_words)
  list_of_words.sort { |shorter, longer| shorter.length <=> longer.length}
end
=end

def shortest_string(list_of_words)
  list_of_words.sort_by! {|string| string.length}
  shortest = list_of_words.shift
  p shortest
end


# test = ["aaaa", "aa", ""]
# shortest_string(test)