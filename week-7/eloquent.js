// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Tim";
console.log(name + " rocks");

// Food program
// var favfood = prompt("What\'s your favorite food?", "");
// alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Loop a triangle
var triangle = "";
var counter = 1;

while (counter <= 7) {
	counter += 1;
	console.log(triangle += "#");
};

// Functions

// Complete the `minimum` exercise.
function min(num1, num2){
	numArray = [num1, num2].sort();
	minimum = numArray.splice(1, 1);
	console.log(minimum);
};
min(7,444)

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name:"Tim",
	age:25,
	favFoods:["Steak", "Eggs", "Pizza"],
	quirk:"I can juggle"
};

console.log(me.name)