// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Peter Leong
// This challenge took me [3] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/* 1. Iterate through votes to access the president property of each sub-object.
2. Repeat for vicePresident, secretary, and treasurer.
3. For each property found, place property in voteCount, if property exists, increase by 1
4. Sort voteCount by value to find highest value.
5. Place property with highest value into officers.
*/

// __________________________________________
// Initial Solution

// // PRESIDENT

for (var voter in votes) {
    if (voteCount.president.hasOwnProperty(votes[voter].president)) {
      voteCount.president[votes[voter].president] ++;
    } else {
      voteCount.president[votes[voter].president] = 1;
    }
}

// // VICE PRESIDENT

for (var voter in votes) {
    if (voteCount.vicePresident.hasOwnProperty(votes[voter].vicePresident)) {
      voteCount.vicePresident[votes[voter].vicePresident] ++;
    } else {
      voteCount.vicePresident[votes[voter].vicePresident] = 1;
    }
}

// //Secretary

for (var voter in votes) {
    if (voteCount.secretary.hasOwnProperty(votes[voter].secretary)) {
      voteCount.secretary[votes[voter].secretary] ++;
    } else {
      voteCount.secretary[votes[voter].secretary] = 1;
    }
}

//Treasurer

for (var voter in votes) {
    if (voteCount.treasurer.hasOwnProperty(votes[voter].treasurer)) {
      voteCount.treasurer[votes[voter].treasurer] ++;
    } else {
      voteCount.treasurer[votes[voter].treasurer] = 1;
    }
}

// President Selection

var presidentVotes = [];
for (var candidate in voteCount.president) {
      presidentVotes.push([candidate,voteCount.president[candidate]]);
      presidentVotes.sort(function(a, b) {return b[1] - a[1]});
      officers.president = presidentVotes[0][0];
}

// Vice President Selection

var vicePresidentVotes = [];
for (var candidate in voteCount.vicePresident) {
      vicePresidentVotes.push([candidate,voteCount.vicePresident[candidate]]);
      vicePresidentVotes.sort(function(a, b) {return b[1] - a[1]});
      officers.vicePresident = vicePresidentVotes[0][0];
}

// Secretary Selection
var secretaryVotes = [];
for (var candidate in voteCount.secretary) {
      secretaryVotes.push([candidate,voteCount.secretary[candidate]]);
      secretaryVotes.sort(function(a, b) {return b[1] - a[1]});
      officers.secretary = secretaryVotes[0][0];
}

//Treasurer Selection

var treasurerVotes = [];
for (var candidate in voteCount.treasurer) {
      treasurerVotes.push([candidate,voteCount.treasurer[candidate]]);
      treasurerVotes.sort(function(a, b) {return b[1] - a[1]});
      officers.treasurer = treasurerVotes[0][0];
}


// __________________________________________
// Refactored Solution
/* This part - sort votes into voteCount object - works

// for (var officers in voteCount) {
//   for (var voters in votes){
//     if (voteCount[officers].hasOwnProperty(votes[voters][officers])) {
//       voteCount[officers][votes[voters][officers]] ++;
//     } else {
//       voteCount[officers][votes[voters][officers]] = 1;
//     }
//   }
// }

*/

/* This part - select officers from voteCount - doesnt work
// var presidentVotes = [];
// for (var candidate in voteCount.president) {
//       presidentVotes.push([candidate,voteCount.president[candidate]]);
//       presidentVotes.sort(function(a, b) {return b[1] - a[1]});
//       officers.president = presidentVotes[0][0];
// }

// var voteArray = [];

// for (var key in voteCount) {
//     if (voteCount.hasOwnProperty(key)) {
//       voteArray.push(voteCount[key]);  
//     }
// }
// for (var key in voteArray)
// voteArray[key].sort(function(a, b) {return b[1] - a[1]});
// console.log(voteArray)


// var chartData = []

// for(var key in voteCount) {        
//     var properties = voteCount[key];

//     if(typeof properties === "object") {
//        var array = [];

//        for(var propKey in properties) {
//            array.push([propKey, properties[propKey]])
//        }

//        voteArray.push(array);
//     }             
// }

// voteArray[0].sort(function(a, b) { return b[1] - a[1]});
// console.log(voteArray[0][0][0])
// officers.president = voteArray[0][0][0]


// for (var x in voteCount){
//   var officerVotes = [];

//   for (var candidate in voteCount[x]) {
//       officerVotes.push([candidate, voteCount[x][candidate]]);
//   };
//   console.log(officerVotes)
  
//       var sortedOfficerVotes = officerVotes.sort(function(a, b) {return b[1] - a[1]});
//       officers[x] = sortedOfficerVotes[0];
// }

*/
// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
Iterating through nested objects is much more complicated in JS than in Ruby, because you have to make sure the objects are of the right filetype before running the functions, or it will usually silently fail, unlike Ruby. Also, JS requires the use of for... if loops, rather than just working with each with Ruby. Map exists and seems to behave like it does in Ruby, but I haven't tried it in JS yet. 

Were you able to find useful methods to help you with this?
We were able to successfully got the problem to work our first time through, and as we were solving it, we started having some ideas come into our head for how to refactor it. However, as you see above, once we got past one or two steps in the refactored solution, everything stopped working, and we couldn't get the half-refactored and half -unrefactored solutions to communicate with each other, so in the end the refactored solution didn't work at all. Even in the refactored version we didn't use any fancy new JS functions, just another for...if loop to iterate one layer deeper on the object and then sort again. 

What concepts were solidified in the process of working through this challenge?
Needing to pay attention to what type of object you're working with in JS became abundantly clear in this challenge. Related to this, I've also finally started printint out tests for my variables and code immediately as I write them, so that I know what type of object I'm working with. While with Ruby, if you pass in the wrong type it'll tell you and point out the error, JS will attempt to coerce the incorrect object into the type that it wants, but that usually ends up behaving in a way that doens't make sense to you and has your code either return something that you don't want, or it'll just silently break and you'll have to dig back through to find any mistakes. 




*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)