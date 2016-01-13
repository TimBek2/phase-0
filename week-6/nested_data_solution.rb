# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]] ]

# attempts:
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}} } }

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}] }

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

 number_array.flatten!
 p number_array.map{|x| x + 5 }

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten!
p startup_names.map {|x| x.concat "ly"}


=begin
	
**************************
		REFLECTION
**************************
What are some general rules you can apply to nested arrays?
If there are only arrays and no hashes, if you iterate over the parent array with a method like .each, then it will give you the same result as if you had passed it a flat array. 
If you want to access elements of a nested array, then you need to nest the indices to access it. If one of the nested containers is a hash, you need to remember to use the appropriate key, rather than a numerical index. 
.flatten will flatten all levels of a nested array - you can also use .flatten(n) to only flatten n levels of the nested array. 

What are some ways you can iterate over nested arrays?
You can use .each to iterate over the array, or .map if you need the resulting values from the code block to be incorporated into a new array. 

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
.flatten was a new method for both of us - I had seen it before but hadn't actually used it in any situation. At first we didn't use it, but when we were just trying to iterate using .map, it wouldn't properly add 5 to each number. Then we tried to use .each with a loop, which was overly complicated, and then I remembered .flatten and we tried flattening the array before using .map. I had used .map in my group research challenge last week, but that was fairly straightfoward, so that was half of a new method as well, which is why we had some issue implementing the solution to 3 at first. Ultimately, we breezed through the challenge. 


=end