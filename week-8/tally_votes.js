// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */


// Pseudocode
// 1. Iterate over the votes.
// 2. Store all the names that were voted for in an object.
// 3. Starting at index 0, iterate through those names in steps of 4.
// 4. Store new names in the voteCount president property.
// 5. Every time a name repeats itself, add one to that name property.
// 6. Restart at index 1. Repeat steps 3-5 for the vicePresident property.
// 7. Repeat at index 2 for secretary.
// 8. Repeat at index 3 for treasurer.
// 9. Create a variable max and set it equal to 0.
// 10. Iterate through each name property in each position property in voteCount. Set max equal to the vote tally IF it is greater than max.
// 11. Set officer position equal to the name of the officer with the max vote.


// __________________________________________
// Initial Solution

// var name = []
// for(var i in votes){
//   var student = votes[i];
//   for(var position in student){
//     name.push(student[position]);
//   }
// }


// for(var elect = 0; elect < name.length; elect +=4){
//   if (voteCount.president[name[elect]]){
//     voteCount.president[name[elect]]++;
//   }
//   else{
//     voteCount.president[name[elect]]= 1;
//   }
// }

// var max = 0;

// for(var i in voteCount){
//   var insideVoteCount = voteCount[i]
//   for(var x in insideVoteCount){
//     if (insideVoteCount[x] > max){
//       max = insideVoteCount[x];
//       officers.president = x;
//     }
//   }
// }

// for(var elect = 1; elect < name.length; elect +=4){
//   if (voteCount.vicePresident[name[elect]]){
//     voteCount.vicePresident[name[elect]]++;
//   }
//   else{
//     voteCount.vicePresident[name[elect]]= 1;
//   }
// }
// for(var i in voteCount){
//   var insideVoteCount = voteCount[i]
//   max = 0
//   for(var x in insideVoteCount){
//     if (insideVoteCount[x] > max){
//       max = insideVoteCount[x];
//       officers.vicePresident = x;
//     }
//   }
// }
// for(var elect = 2; elect < name.length; elect +=4){
//   if (voteCount.secretary[name[elect]]){
//     voteCount.secretary[name[elect]]++;
//   }
//   else{
//     voteCount.secretary[name[elect]]= 1;
//   }
// }
// for(var i in voteCount){
//   var insideVoteCount = voteCount[i];
//   max = 0;
//   for(var x in insideVoteCount){
//     if (insideVoteCount[x] > max){
//       max = insideVoteCount[x];
//       officers.secretary = x;
//     }

//   }

// }
// for(var elect = 3; elect < name.length; elect +=4){
//   if (voteCount.treasurer[name[elect]]){
//     voteCount.treasurer[name[elect]]++;
//   }
//   else{
//     voteCount.treasurer[name[elect]]= 1;
//   }
// }
// for(var i in voteCount){
//   var insideVoteCount = voteCount[i]
//   max = 0;
//   for(var x in insideVoteCount){
//     if (insideVoteCount[x] > max){
//       max = insideVoteCount[x];
//       officers.treasurer = x;

//     }
//   }
// }

// console.log(voteCount);
// console.log(officers);






// __________________________________________
// Refactored Solution

for(var position in voteCount){
  max = 0;
  var count = voteCount[position];
  for(var index in votes){
    var student = votes[index];
    for(var vote_position in student){
      var elect = student[vote_position];
      if (position === vote_position){
        if(count[elect]){
          count[elect]++;
        }
        else{
          count[elect] = 1;
        }
      }
    }
  }

  for (officer_position in officers){
    var max = 0;
    if (position === officer_position){
      for (name in count){
        var tally = count[name];
        if (tally > max){
          max = tally;
          officers[officer_position]= name;
        }
      }
    }
  }
}

// ------------------------------------------
// Reflection:

// What did you learn about iterating over nested objects in JavaScript?
// Iterating over nests in JavaScript was so confusing! Just the syntax makes it more cumbersome than in Ruby. On top of that, I found it really strange that there was no way to access index values without specifically iterating. For example, there was no way to access the president property in voteCount without doing either:
// voteCount.president
// voteCount[president]
// Even though we were hoping to access it using voteCount[0].

// Were you able to find useful methods to help you with this?
// No. We tried using Math.max(),but when we realized that we weren't putting an array into it, we had to do it the old fashioned way.

// What concepts were solidified in the process of working through this challenge?
// Iteration was solidified, as was accessing properties in objects.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)