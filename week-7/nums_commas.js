// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Matt Baquerizo.

// Pseudocode



 //Initial Solution
function separateComma(number) {
  // create a variable called number array, which splits the number string into the array
  var numberArray = number.toString().split('');
  // index is the length of the number string
  var index = number.toString().length;
  // console.log(index);
  
  // length of index - 3
  var numIndex = index - 3
  // numIndex -= 3;
  
  // insert comma in the array, without removing any objects, at index numIndex, which subtracts by 3 to cover each thousand place, until numIndex <= 0 
  while (numIndex > 0) {
  numberArray.splice(numIndex, 0, ",");
    numIndex -= 3;
  }
  
  //turn array into a string which joins each object and print the string
  numberArray = numberArray.join('');
  console.log(numberArray);

}


// Refactored Solution

function separateComma(number) {
  
  var numberArray = number.toString().split('');
  
  var index = number.toString().length;

  var numIndex = index - 3

  while (numIndex > 0) {
  numberArray.splice(numIndex, 0, ",");
    numIndex -= 3;
  }
  numberArray = numberArray.join('');
  console.log(numberArray);

}


// Your Own Tests (OPTIONAL)
separateComma(274456819)
separateComma(2193)
separateComma(299)


// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
At first we tried to solve it the same way we did with Ruby, but discovered that that method didn't work out so well. Instead we had to convert it into an array and insert commas, then convert it back into a string. It's really confusing to write things in JavaScript and you don't know what type of object the methods are returning - you often end up getting an undefined answer and getting confused as to why. 

What did you learn about iterating over arrays in JavaScript?

What was different about solving this problem in JavaScript?

What built-in methods did you find to incorporate in your refactored solution?







*/
