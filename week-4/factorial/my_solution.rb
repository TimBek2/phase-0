# Factorial

# I worked on this challenge  with: Ieronim Oltean.


# Your Solution Below

def factorial(number)
	if number == 0
		return 1
	else
		number * factorial(number - 1)
	end
end

p factorial(5)

# I worked on finding this solution, without recursion, on my own after the pairing session

def fac(n)
	sum = 1
	sum.upto(n) { |i| sum *= i }
	return sum
end