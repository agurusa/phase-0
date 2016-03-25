// Pseudocode

// Input: An integer
// Output: A string
// Steps:
// 1. Convert integer to a string
// 2. Check length, IF length <= 3, return number as is
// 3. ELSE reverse the string
// 4. ITERATE every 3rd number
// 5. ADD comma after every 3rd number
// 6. REVERSE string and return number

// Initial Solution

// function separateComma(number) {
//   var numbers = number.toString();
//   if (numbers.length <= 3) {console.log(number)}
//   else {
//     var split_number = numbers.split("").reverse();
//     // console.log(split_number);
//       var empty_array = []
//       for (var counter = 0; counter < numbers.length; counter ++){
//         if (counter % 3 === 0)

//         var slice = split_number.slice(counter, counter + 3);
//         if (slice.length === 3){
//           var push = slice.push(",");
//         }
//         empty_array = empty_array.concat(slice);
//         // console.log(empty_array);

//         }
//       }
//     console.log(empty_array.reverse().join([""]));
//   }


// }

// separateComma(100)
// separateComma(12345678)
// separateComma(1234556789)

//Refactored Solution:

function separateComma(number) {
  var numbers = number.toString();
  if (numbers.length <= 3) {return number}
  else {
    var split_number = numbers.split("").reverse();
      var number_array = []
      for (var i = 0; i < numbers.length; i +=3){

        var digits = split_number.digits(i, i + 3);
        if (digits.length === 3){
          var comma = digits.push(",");
        }
        number_array = number_array.concat(digits);
        }
    console.log(number_array.reverse().join([""]));
  }
}

separateComma(100)
separateComma(12345678)
separateComma(1234556789)

// Reflection:
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// We actually approached it the same way that we approached the Ruby challenge, but had a lot more trouble refactoring it. It was also a lot more difficult to see exactly what our program was doing when we ran it and it spit out an unexpected answer, so our intial solution had a lot of console.log statements.

// What did you learn about iterating over arrays in JavaScript?

// We used for and a counter. It's definitely a lot more tedious to iterate in JavaScript.


// What was different about solving this problem in JavaScript?
// Our methods kept returning unexpected values. For example, when we were using .push, we realized that the method returned the length of the array and not the actual array, even though it was adding in what we needed it to. There was a lot more need for defining variables and determining exactly what we needed the program to return.

// What built-in methods did you find to incorporate in your refactored solution?

// We used .push, .reverse, .split, .toString, .length, and .concat.