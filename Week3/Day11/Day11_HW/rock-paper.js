var userChoice = null;
var compChoice = null;
var userScore = 0
var compScore = 0

function getInput(){
	// userChoice = prompt("Choose Rock, Paper, or Scissors:")
	document.querySelector('#rock').addEventListener('click',function() {
		userChoice = "rock"
	});
	console.log("you chose: " + userChoice);
	compChoice = Math.random();

	if (compChoice <= .33) {
		compChoice = "rock";
	} else if (compChoice <= .66) {
		compChoice = "paper"
	} else {
		compChoice = "scissors";
	}; 
	result();
};

function result() {
	if (compChoice === userChoice){
		console.log("Draw!");
	} else if (compChoice === "rock"){
		if (userChoice === "scissors"){
			console.log("you lost, computer chose " + compChoice + ".");
			compScore ++;
		} else if (userChoice === "paper") {
			console.log("You won! Computer chose " + compChoice + ".");
			userScore ++;
		};
	} else if (compChoice === "paper"){
		if (userChoice === "scissors"){
			console.log("You won! Computer chose " + compChoice + ".");
			userScore ++;
		} else if (userChoice === "rock"){
			console.log("you lost, computer chose " + compChoice + ".");
			compScore ++;
		};
	} else if (compChoice === "scissors"){
		if (userChoice === "rock"){
			console.log("You won! Computer chose " + compChoice + ".");
			userScore ++;
		} else if (userChoice === "paper"){
			console.log("you lost, computer chose " + compChoice + ".");
			compScore ++;
		};
	} else {
		console.log("invalid comparison.");
	};
}

// getInput();
while (userScore !== 3 && compScore !== 3) {
	getInput();
};

if (userScore >= 3) {
	alert("You won!!!");
} else if (compScore >= 3){
	alert("You lost...");
};