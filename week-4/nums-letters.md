What does puts do?
Puts literally writes to the screen whatever comes after it. It doesn't return any result back into the program, just writes it to the screen.

What is an integer? What is a float?
An interger is any whole number, that is it doesn't have a decimal point. A float, or floating-point number, is any number that does have a decimal point.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division is like long division, you would continue the problem even if you have an answer that isn't a whole number (9/2=4.5). Interger division, on the other hand, never has a decimal point, and that decimal is always rounded down (9/2=4, because we round down the .5 with interger division).

Mini-challenges:

```ruby
# number of hours in a year
p 24 * 365
# minutes in a decade...
puts 60 * 24 * 365 * 10
#my age in seconds
print 1025000000 / 31557600
```

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby uses basic symbols as math operators: + - * / for addition, subtraction, multiplication, and division respectively. How they behave depends on which type of objects you are working with. Strings, for example, can be added together to give "string a" + "string b" = "string a string b". You can also multiply strings by intergers ("hello" * 5 will return "hello" five times). However, you can't multiply anything by a string (give me "pear" numbers of the string "fruits" doesn't make any sense).

What is the difference between integers and floats?
Intergers are whole numbers, and are always rounded down to the whole number (never rounded up, as we are generally used to). Floats, or Floating Point Numbers, are non-whole numbers, or they have decimal points (even if it's n.0). 

What is the difference between integer and float division?
If the numbers are Floats, or Floating Point Numbers, then they are divided like long division, with decimal points. If they are intergers, however, then there are no decimals (just intergers), and any remained is rounded down. This is just like a modulus, except that modulus returns the remainder, while interger division just throws that away and returns the number of whole divisions. 

What are strings? Why and when would you use them?
Strings are a sequence of characters within single or double quotations in Ruby. Strings are useful for enabling the program to receive some input, or to return specific answers to a user - since it just tells the computer "treat everything within quotes as a string," you can write (or recieve) any different messages you want without the language having to have a specific meaning assigned to whatever might be input. 

What are local variables? Why and when would you use them?
Local variables are variables that have been declared and saved on your local machine. They could be anything from simple strings that you don't want to have to rewrite every time you want to use it, to reusable math equations that you want to be able to call quickly. You use them very frequently once you start writing more complicated programs, as you'll frequently start having pieces that you use very often, and it becomes more efficient to just build those pieces one time and then just call it whenever you need to use it.

How was this challenge? Did you get a good review of some of the basics?
This challenge was good. It was a good review. It required a little more effort to (re)remember the material than I expected it to, thinking it would be a lot more review and less re-learn. That said, I enjoyed starting to work in Ruby again and start building some programs, albeit basic ones. 