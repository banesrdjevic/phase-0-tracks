// DBC 7.3 Algorithms in Javascript

// RELEASE 0
// Write a function to take an array of words and return the longest word or phrase.
// Add driver code to test

// BUSINESS LOGIC
function longest_phrase(phrases) {
  // var phrases = ["this", "another phrase", "still even longer phrase", "shorter", "the longest phrase ever continues", "short"];
  var winning_length = "";
  for (var i = 0; i < phrases.length; i++) {
    if (phrases[i].length > winning_length.length) {
      winning_length = phrases[i]
      //console.log(winning_length)
    }
  }
  console.log(winning_length)
}

// DRIVER CODE
var phrases_list = ["this", "another phrase", "still even longer phrase", "shorter", "the longest phrase ever continues", "short"]

longest_phrase(phrases_list)
// console.log(winning_length)

// RELEASE 1
// write a function that takes two objects and checks to see if the objects share at least one key-value pair. 

var sky = {clouds: true, color: "blue", windspeed: 10, distance: "endless"};
var jessica = {hair: "blonde", age: 34, color: "blue", height: "5 ft 4"};

while (var i = 0; i < sky.length; i++) {
  for (var key in sky) {
    if (sky[key] in jessica) {
      for 
    }
  }
}

// RELEASE 2
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.

function build_array(x) {
  var str = "";
  var array = [];
  while (var i = 0; i < x; i++) {
    array.push(str)
  }
}
