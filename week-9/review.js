// Minimum Requirements
// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// PSEUDOCODE
// Input: String of itmes separated by spaces (example: "carrots apples cereal pizza")
// Output An object full of items as properties with a default value
// Steps: 
// Create a function that takes a string full of items in the list
// Create an object and assign it a default value of quantity (1) to store your list of items
// Take the string and split it into individual items.(split method I'm thinking)
// Iterate through the array of split words from the string and store them into the empty object
// Print the list to the console

// function createList(items) {
//   var groceryList = {};
// var splitSentence = items.split(" ");
//   for (var i = 0; i < splitSentence.length; i ++)
//     groceryList[splitSentence[i]] = 1;
//   console.log(groceryList);
// }

// createList("carrots apples cereal pizza")

// // PSEUDOCODE
// // Input: An item, list name, and the quantity to add with it to the list
// // Output: A list with the new item included
// // Steps: Take the item and quantity and apply them as a property and value to the list object

// function addItem(itemName,list,quantity){
//   var list[itemName] = quantity;
// }

// addItem("prunes", groceryList, 3)

// // PSEUDOCODE
// // Input: Item name
// // Output: New list without the removed item
// // Steps: Create a function that takes in the item name 
// // Find and delete item from the list
// function removeItem(itemName,list){
//   delete list[itemName];
// }

// removeItem("carrots",groceryList)




// // Method to update the quantity of an item
// // Input: Item name, List name, and new quantity
// // Output:list of properties with updated quantity
// // Steps:
// // Create a function that takes 3 parameter
// // Update the quantity using the dot notation or bracket notation for that item
// function updateQuantity(itemName,list,quantity){
//  list[itemName] = quantity; 
// }

// updateQuantity("cereal",groceryList,3)
// console.log(groceryList);


// JS Constructor

function createList(items){
  this.items = items.split(" ");
  var list = {}
  for(var i = 0; i < this.items.length;i++){
    list[this.items[i]] = 1;
  }
  
  this.addItem = function(itemName,quantity){
    list[itemName] = quantity
  }
  this.removeItem = function(itemName){
    delete list[itemName]
  }
  this.updateQuantity = function(itemName,quantity){
    list[itemName] = quantity;
  }
  this.display = function(){
  console.log(list)
}

}


var groceryList = new createList("carrots apples cereal pizza")
groceryList.addItem("eggs", 12);
groceryList.display();
groceryList.addItem("cookies", 3);
groceryList.display();
groceryList.removeItem("cereal");
groceryList.updateQuantity("carrots",4);
groceryList.display();


// Reflection
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I first worked on iterating through lists with functions, but when I refactored I used a JavaScript constructor

// What was the most difficult part of this challenge?
// The intial solution was actually the hardest, I couldn't get my list object to exist outside of the createList function, so I couldn't add items to it. However, the constructor actually worked incredibly easily, and I think I'll be using it extensively unless I end up seeing that it's not part of best practices for some reason. 

// Did an array or object make more sense to use and why?
// An object made much more use for this since you needed to be able to store a changing value (quantity) for each item, so you needed to have a second field available. If I wanted to make a list in which each item could only have one instance, like maybe a list of my favorite foods in ranked order, then I could use an array. 




