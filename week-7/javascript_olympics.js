 // JavaScript Olympics

// I paired with: Thomas Yancey on this challenge.

// This challenge took me [1] hours.




// Bulk Up
function win(array) {
  for (var i in array){
  console.log(array[i].name + " won the " + array[i].event);  
  }
}

var sarahHughes = {
  name: "Sarah Hughes",
  event: "Ladies' singles"
};
var test = [sarahHughes]
win(test)



// Jumble your words
function reverse(string) {
  return string.split('').reverse().join('')
}

console.log(reverse("Purple"))

// 2,4,6,8
function evensOnly(arr) {
  var evens = [];
  for (var i in arr){
    if (arr[i] == 0 || arr[i] % 2 == 0)
      evens.push(arr[i]) ;  
  }
  return evens;
}

console.log(evensOnly([0,1,2,3,4]));
// 
// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}
// Driver Code

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote + " " + michaelPhelps.age)


// Reflection