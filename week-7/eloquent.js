// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var person = "Aarthi";
console.log(person);
person = "Sam";
console.log(person);

//food prompt

prompt ("What is your favorite food?");
alert("Mine too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle:
for (var hash = "#"; hash.length <= 7; hash +="#")
  console.log(hash);

//FizzBuzz:
for (var counter = 1; counter <=100; counter += 1)
  if ((counter % 3 == 0) && (counter % 5 == 0))
        console.log("FizzBuzz");
  else if (counter % 3 ==0)
    console.log("Fizz");
    else if (counter % 5 == 0)
    console.log("Buzz");
  else
        console.log(counter);


// Functions

// Complete the `minimum` exercise.

function min(x,y){
  if (x < y)
    return x;
  else (y < x)
    return y;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name : "Aarthi",
  age : 27,
  favoriteFoods : ["pizza", "cookies", "cake"],
  quirk : "I like to rock climb"
}

console.log(me.favoriteFoods[2])
