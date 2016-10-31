
// DBC WK 7 Assignment 1 Javascript

// Pseudo code a JS method to reverse('hello')
// split each letter in JS into an array
// use the reverse function for arrays
// join the strings back together
// return the function to the user

// BUSINESS LOGIC

function reverse(word) {
  var word = word;
  var reverse_word = [];

  reverse_word = word.split('');
  // console.log(reverse_word);

  reverse_word.reverse();
  // console.log(reverse_word);

  var new_word = reverse_word.toString();
  // console.log(new_word);

  var join_word = new_word.replace(/,/g, "");
  if (word == "badass") {
    console.log("Hell yeah you are!")
  } else {
    console.log(join_word)
  }
}

// DRIVER CODE

reverse("badass")

reverse("trendy")



// NOTES FROM THE 7.1 LESSON CODE SNIPPETS

// // add two numbers
// function add(x, y) {
//   return x + y;
// }

// // say hello
// function sayHello() {
//   console.log("Hello!");
// }

// console.log(add(5,3));
// sayHello();

// // declare some variables
// var currentlyLearning = "Ruby";
// var daysProgramming = 21;
// var enjoyingCoding = true;
// var biggestComplaint = null;

// // print a variable
// console.log("currently_learning has a value of " + currentlyLearning);

// // reassign a variable
// currentlyLearning = "JavaScript";

// // print the new value of the variable
// console.log("currently_learning has a value of " + currentlyLearning);

// var str = "Loop over me!";

// // Look at line 8:
// // We initialize our counter, set its "while" condition, 
// // and give the increment command that should happen 
// // after each iteration of the loop -- 
// // all in one tight line of code!
// for (var i = 0; i < str.length; i++) {
//   console.log(str[i]);
// }

