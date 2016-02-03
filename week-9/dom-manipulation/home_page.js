// DOM Manipulation Challenge


// I worked on this challenge with Peter Leong.


// Add your JavaScript calls to this page:

// Release 0:
// Add the class "done" to the #release-0 div.

document.getElementById("release-0").className = "done";

// Release 1:
// Set the display property of the #release-1 div to none.
document.getElementById("release-1").style.display = "none";


// Release 2:
// Change the inner text of the <h1> tag to "I completed release 2."
document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2";

// Release 3:
// Add the background color #955251 to the #release-3 div. #955251 was Pantone's (Links to an external site.) color of the year for 2015!
document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:
// Select all occurrences of class .release-4 and change the text-size to 2em.
var x = document.getElementsByClassName("release-4");
for (var i=0;i<x.length; i++){
	x[i].style.fontSize = "2em";
};


// Release 5:
// Take the HTML in the template.hidden and append it to the bottom of the page. Use the Treehouse Blog Template Tag (Links to an external site.) resource for help.
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));