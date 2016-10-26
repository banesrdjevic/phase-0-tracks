
var color = ["green", "white", "orange", "purple"]
var names = ["Ed", "Izzo", "Dantonio", "Sparty"]

color.push("silver")
names.push("Cousins")

var horses = {};

for (var i = 0; i < color.length; i++) {
  horses[color[i]] = names[i];
}
console.log(horses)

// RELEASE 2 OBJECTS (similar to classes with methods in Ruby)

function Car(color, year, avail_for_sale) {
  console.log("Our new car:", this);

  this.color = color;
  this.year = year;
  this.avail_for_sale = avail_for_sale;

  this.starts = function() { console.log("*vroom*");};
  // this.color = 

}

// DRIVER CODE
var mustang = new Car("red", 2016, true);
mustang.starts();
console.log(mustang);

mustang.color = "black";
console.log(mustang);

var camry = new Car("green", 1999, true)
console.log(camry)

var ford = new Car("beige", 2010, false)
console.log(ford)


// RELEASE 3 LOOP

// Question 1 loop through keys and values of an object
for (var key in horses) {
  if (horses.hasOwnProperty(key)) {
    console.log(key + "->" + horses[key]);
  }
}

// question 2 advantages and disadvantages of using constructor functions to create objects?
// disadvantage is the repeat of the class name each time....
// you have to edit the  name if it ever changes, and 
// leaves room for typing mistakes.


