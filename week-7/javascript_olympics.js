 // JavaScript Olympics

// I paired [by myself, with: Aarthi Gurusami/Frank Lam] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
var athlete1 = {
  name: "Michael",
  event: "Swimming"
};
var athlete2 = {
  name: "Sarah",
  event: "Ladies' Singles"
};

var athleteArray = [athlete1, athlete2];

function win(athletes) {
  athlete1.win = (athlete1.name + " won " + athlete1.event + "!");
  console.log(athlete1.win);
  athlete2.win = (athlete2.name + " won " + athlete2.event + "!");
  console.log(athlete2.win);
}
win(athleteArray);

// Jumble your words
function reverse(word) {
  var array = word.split("");
  return array.reverse().join([""]);
}

console.log(reverse("hey"))

// 2,4,6,8

function evens(number){
  var even = [];
  for(var i = 0; i<=number.length; i++){
    if (number[i] % 2 == 0)
      even.push(number[i]);
  }
    return even;
}

console.log(evens([1,2,3,4,5,6]));

// "We built this city"
function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
console.log(michaelPhelps);

var sarahHughes = new Athlete("Sarah", 30, "hockey", "I'm the coolest");
console.log(sarahHughes);
// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// I was able to solidify how to iterate in JavaScript. I also appreciated the chance to use a constructor function.
// What are constructor functions?
// Constructor functions are really similary to Ruby classes. They allow you to define objects of a certain type that take on characteristics. When you instantiate a constructor function, a change can be made to that instance without changing all the other instances of that object.
// How are constructors different from Ruby classes (in your research)?
// Classes in Ruby are objects. Constructor functions in JavaScript are instances. This link was really helpful in comparing Ruby and JavaScript:
// http://raganwald.com/2013/02/10/prototypes.html