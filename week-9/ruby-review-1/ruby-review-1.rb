# U2.W6: Testing Assert Statements

# I worked on this challenge with: Coline Forde


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#The code runs to see if the names match the name on line 12. If it returns true, there is no error. If it returns false, the assert error raises and you'll see the message "Assertion failed!".


# 3. Copy your selected challenge here
def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
 return num_1 - num_2
end

def multiply(num_1, num_2)
 return num_1 * num_2
end

def divide(num_1, num_2)
 return num_1 / num_2.to_f
end


# 4. Convert your driver test code from that challenge into Assert Statements


sum = add(1,2)
assert {sum == 5}
assert {sum == 3}

minus = subtract(7,5)
assert { minus == 2 }
assert {minus == 10}

times = multiply(2,4)
assert { times == 8 }
assert { times == 42 }

div = divide(10,2)
assert {div == 5}
assert {div == 3}





# 5. Reflection