/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {};

// for (index in students){
//   gradebook[students[index]] = {};

// }


// var i = 0;
// for (name in gradebook){
//   gradebook[name].testScores = scores[i];
//   i++;
// }

// gradebook.addScore = function(name, score){
//   gradebook[name].testScores.push(score);
// }

// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores);
// }

// average = function(integers){
//   var sum = 0;
//   for (x in integers){
//     sum +=integers[x];
//   }
//   var avg = sum / integers.length;
//   return avg;
// }




// __________________________________________
// Refactored Solution


// Refactored Solution

var gradebook= {};
//Release 2
for (var name in students){
  gradebook[students[name]] = {};
}
//Release 3
var score=0;
for (var name in gradebook){
  gradebook[name].testScores = scores[score];
  score++;
}

//Release 4
gradebook["addScore"] = function(name,score){
    gradebook[name]["testScores"].push(score);
}


//Release 5 and 7

gradebook["getAverage"] = function(name){
  return average(gradebook[name]["testScores"]);

}


//Release 6
function average(array){
  var sum =0;
  for (var i=0; i<array.length; i++){
    sum += array[i];
  }
  var av = sum/array.length;
  return av;
}







// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

// I learned that there are a couple different ways to do it. You can add a function using dot or bracket notation. We used the following:

// object[function_name] = function(parameter_1, parameter_2){
//     this.parameter_1 = parameter_2;
// }

// How did you iterate over nested arrays in JavaScript?

// We iterating using:
// for(var i in array)
//  and
// for(var i = 0; i < array.length; i++)

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

// We didn't really incorporate new methods. We used .length, but we wrote all the functions out using iteration.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)

