# Accountability Group Method



# 1. Pseudocode

# Input - An array of names
# Output - An array of arrays of at least 3 names each
# Steps - 	Define method that takes the array of names
# 			Randomize the names - non destructively
# 			Break of groups of 4 and put them into separate arrays
#			Check to make sure there are no groups of less than 3
# 			If there are, break them up and distribute to other groups
# 			Remove the now empty array
# 			Return the array of arrays

# 2 Initial Solution
roster = ['John Seo',
'Aaron Hu',
'Adam Pinsky',
'Akeem Street',
'Alex Forger',
'Andrew Kim',
'Baron Kwan',
'Brian Bier',
'Byron Gage',
'Carl Conroy',
'Charlie Bliss',
'Christopher Bunkers',
'Cody Kendall',
'Coline Forde',
'David Valencia',
'Emily Bosakowski',
'Everett Golden',
'Hagai Zwick',
'Heather C',
'Ian Wudarski',
'Ieronim Oltean',
'Jake Hamilton',
'James Boyd',
'Jasmeet Chatrath',
'Jenna El-Amin',
'Jerrie Evans',
'Joe Case',
'Jonathan Case',
'Jonathan Schwartz',
'Jonathan Silvestri',
'Kathryn Garbacz',
'Ian Kinner',
'Kyle Cierzan',
'Kyle Zelman',
'Linda Oanh Ho',
'Yiorgos Makridakis',
'Matt Harris',
'Matthew Baquerizo',
'Menuka Samaranayake',
'Michael Pintar',
'Mollie Stein',
'Lydia Nash',
'Aaron Opsahl',
'Peter Leong',
'Peter Stratoudakis',
'Prince Sadie',
'Ryan F. Salerno',
'Sanderfer Chau',
'Sarah Finken',
'EMMET SUSSLIN',
'Sydney Rossman-Reich',
'Eric Tenza',
'Thomas Yancey',
'Tim Kelly',
'Timothy Beck',
'Tyler Doerschuk',
]

roster = roster.shuffle

def group(array)
	groups = array.each_slice(4).to_a
	return groups
end

def distribute(groups)
	groups.each do |group|
		if group.length < 3
			n = 0
			while n <= group.length
				groups[n].push(group[n])
				n += 1
			end
		end
	end
	groups.pop
	return groups
end

p group(roster)

# Complexity

# If you run this program three times in a row, will the program give you three different outputs?
# Yes, I used the .shuffle method to randomize the initial list

# Should the program store past outputs?
# It could, I think this would be done using global variables but I'm not sure how. Will look into later.

# If one person were to leave the cohort, how would the accountability groups change?
# This would be fine, you could just update the roster array and run the method again. 

# How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.
# I think this is done in the sense that it is an MVP. I would like to try and find a way to incorporate both methods into one single method that will automatically disperse a group if it is too small, but I'm not sure how to do this yet. 

=begin
==========================
		Reflection
==========================
What was the most interesting and most difficult part of this challenge?
I didn't know how to break up the original array at first, but it wasn't hard to find .each_slice as I'd seen it once before. After that, figuring out how to redistribute a small group was a hard challenge. 

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes. Every challenge makes it easier, as I'm starting to learn what terms that are similar to actual code, making the transition from pseudo to real code that much easier.

Was your approach for automating this task a good solution? What could have made it even better?
I'd like to find a way to condense the whole problem into one method that will automatically redistribute the last group if it only has 2 members, but I'm not sure how to write that if statement yet.

What data structure did you decide to store the accountability groups in and why?
I used arrays for this whole challenge since there's a list of only one data point being used - names, and the order doesn't even matter since it gets randomized to avoid repitition. Since arrays can contain arrays, there's no need to use anything else. 

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I got more experience using .each_slice, and the syntax for that. Specifically, I didn't realize that I needed to call it .to_a after using .each_slice on it, but the sliced up arrays weren't getting passed on. 
	
=end



