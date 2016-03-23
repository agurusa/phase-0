
// Pseudocode:

// Create a method that accepts a group of whole numbers as the argument.
// A. Create a method called sum that adds up all the numbers.
//   1. Create a counter called sum. Set it equal to 0.
//   2. Iterate over the group of numbers. Add each number to sum.
//   3. Return the final value of sum.

// B. Create a method called mean that returns an average of all the numbers.
//   1. Use the returned value of sum from part A.
//   2. Count the amount of numbers in the group of numbers.
//   3. Divide the sum by the amount of numbers.
//   4. Return that value.

// C. Create a method called median that returns the number that is in the middle of the group of numbers.
//   1. Arrange the numbers in order from least to greatest.
//   2. Count the amount of numbers in the group.
//     a.IF there are an odd amount of numbers:
//       -divide the amount of numbers by 2 to return an integer value, and add 1.
//       -return the number that is at that index position in the group.
//     b.ELSE (there are an even amount of numbers):
//       -divide the amount of numbers by 2.
//       -take a slice of 2 numbers out of the group at that index position.
//       -add the numbers in that slice together.
//       -divide that sum by 2.
//       -return that number.