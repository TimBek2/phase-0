 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Make a roshambo game
// Goals: Play against a computer honestly, or cheat with a 50% chance of getting caught.
// Characters: Player, computer
// Objects: Each player's choice
// Functions: 

// Pseudocode
// Create Object player1 and 2
// Object player has 2 properties, player number and move choice
// Function choose lets each player pick a move
// Function compares the two choices and returns the winner
// Function cheat has the computer pick, then has you play the winning move
// A 50% chance is given to get caught, in which case you lose, or you win. 
// Create Object computer - Idea shelved for now
// Computer has 3 properties, R P & S - Shelved
// Function test returns one of them - Shelved

// Initial Code

var player1 = { player: 1, choice: ''};
var player2 = { player: 2, choice: ''};

function choose() {
	var p1 = prompt('First player: rock, paper, scissors?');
	player1.choice = p1;

	var p2 = prompt('Second player: rock, paper, scissors?');
	player2.choice = p2;
}

// function cheat(player) // Can't figure out how to get this to operate properly in JS
// 	var odds = Math.floor(Math.random() * 2);
// 	if (odds % 2 == 0) {
// 		console.log('busted! you lose!');
// 	} else {
// 		console.log('you win! good job!')
// 	}

function declareWinner(player1, player2) {
	if (player1.choice === 'rock'){
		if (player2.choice === 'paper') {
			console.log('Player 1 loses!');
		} else if (player2.choice === 'scissors') {
			console.log('Player 1 wins!');
		} else if (player2.choice === 'rock') {
			console.log('Tie! Try again!');
		}
	} else if (player1.choice === 'paper') {
		if (player2.choice === 'scissors') {
			console.log('Player 1 loses!');
		} else if (player2.choice === 'rock') {
			console.log('Player 1 wins!');
		} else if (player2.choice === 'paper') {
			console.log('Tie! Try again!');
		}
	} else if (player1.choice === 'scissors') {
		if (player2.choice === 'rock') {
			console.log('Player 1 loses!');
		} else if (player2.choice === 'paper') {
			console.log('Player 1 wins!');
		} else if (player2.choice === 'scissors') {
			console.log('Tie! Try again!');
		}
	};
}

choose()
console.log(player1)
console.log(player2)
// cheat(player1)
declareWinner(player1, player2)




/*
Failed attempt to use a computer against you, instead just using 2 human players

var player = {player: 1, choice: ''};
var computer = {player: 2, choice: ''};


function compPlay(obj) {
	var compMoves = ['rock', 'paper', 'scissors'];   
	var compPlay = compMoves[Math.floor(Math.random() * compMoves.length)];
}
compPlay(computer)

function play(){
	var yourMove = prompt('Rock, Paper, Scissors?');
	player.choice = yourMove;
}


function declareWinner(player, computer){
	if (player.choice === 'rock'){
		if (computer.choice === 'paper') {
			console.log('You lose!');
		} else if (computer.choice === 'scissors') {
			console.log('You win!');
		} else if (computer.choice === 'rock') {
			console.log('Tie! Try again!');
		}
	} else if (player.choice === 'paper') {
		if (computer.choice === 'scissors') {
			console.log('You lose!');
		} else if (computer.choice === 'rock') {
			console.log('You win!');
		} else if (computer.choice === 'paper') {
			console.log('Tie! Try again!');
		}
	} else if (player.choice === 'scissors') {
		if (computer.choice === 'rock') {
			console.log('You lose!');
		} else if (computer.choice === 'paper') {
			console.log('you win!');
		} else if (computer.choice === 'scissors') {
			console.log('Tie! Try again!');
		}
	};
}
*/






// Refactored Code

//Skipped refactoring, not enough time after all the dead-ends in code ideas





// Reflection
/*
What was the most difficult part of this challenge?
I didn't have too much time coming up with a game that would be simple and could use a few actions - rock paper scissors, but I wanted to add many more complicated functions such as a computer player that would randomly return one move, and the function to cheat which would have a 50% chance of winning or losing. 

What did you learn about creating objects and functions that interact with one another?
I still have a lot of confusion regarding trying to do Ruby actions to JavaScript objects, and JavaScript errors are nowhere near as helpful at getting your code fixed up. 

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I started to use some more complicated math functions in order to create a computer player that would randomly select one move, and a cheating function that would just be a 50/50 chance of winning or losing, but neither of those concepts worked for me by the time I started calling myself on time. 

How can you access and manipulate properties of objects?
Object properties can be accessed and changed using dot notation, so obj.prop = val, or if there are nested objects you can have obj.prop1.prop2 = val


*/

//
//
//
//
//
//
//
//