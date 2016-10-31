// DBC 7.3 Algorithms in Javascript

// RELEASE 0
// Write a function to take an array of words and return the longest word or phrase.
// Add driver code to test

// var phrases_list = ["this", "another phrase", "still even longer phrase", "shorter", "the longest phrase ever continues", "short"]

function longest_phrase() {
  var phrases = ["this", "another phrase", "still even longer phrase", "shorter", "the longest phrase ever continues", "short"];
  var winning_length = "";
  for (var i = 0; i < phrases.length; i++) {
    if (phrases[i].length > winning_length.length) {
      winning_length = phrases[i]
      //console.log(winning_length)
    }
  }
  console.log(winning_length)
}

longest_phrase()
// console.log(winning_length)

// RELEASE 1
// write a function that takes two objects and checks to see if the objects share at least one key-value pair. 


// RELEASE 2
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
