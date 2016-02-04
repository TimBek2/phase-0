# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#Go through each word in the input and reverse each word in place so that the letters are reversed but the order of the words don't change. 


# Initial Solution
def reverse_letters(sentence)
  sentence.split(" ").map(&:reverse).join(" ")
end


puts reverse_letters("Hi I'm Coline")
# Refactored Solution





# Reflection