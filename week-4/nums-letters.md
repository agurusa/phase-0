**What does puts do?**

The command ```ruby puts``` returns nil and prints the output on the console on a new line. This is different than ```ruby
p``` and ```ruby print``` because p will both return the output and print it on the console, while print will return nil and print it on the same line on the console.

**What is an integer? What is a float?**

An integer is a number with no decimal points, while a float is a number with decimal points. In order to return a float, you must input a float; meaning, you have to specify the digits after the decimal point. You can also change a number into a float with the operation Float("integer or string").

**What is the difference between integer and float division? How would you explain the difference to someone who doesn't know anything about programming?**

Integer division would be 2 numbers without decimal points that are divided and that give you a number without decimal points as the answer. For example:
  9 / 2 = 4

Technically, we know that there is a remainder of 0.5, however, the number 4.5 is a float. If we want our answer to read as 4.5, we have to write:
  9.0 / 2.0 = 4.5

**Release 2**
Mini challenge code:

Hours in a year:
```ruby
p 24.0 * 365.0
```
Minutes in a decade:
```ruby
p 60.0 * 24.0 * 365.0 * 10.0
```

**What are strings? Why and when would you use them?**

Strings are a group of characters between apostrophes or quotations. All of the following are examples of strings:
```ruby
var1= "Im a string"
var2= "12"
var3= 'Also, I\'m a string'
```

All characters are included as strings, with the exception of apostophes and backslashes. A backslash can be used to include these characters as well. We use strings to see and manipulate user friendly data. We can use characters in conjunction with numbers to write useful programs.

**What are local variables? Why and when would you use them?**

A local variable is a variable that can be used in a function. We can define a variable in the following manner:
```ruby
variable = "variable definition"
```
Local variables specifically are those that are declared inside a function, while global variables are those that are defined outside a function. Local variables release memeory when you're finished with them, but global variables do not. Therefore, you only want to use a global variable when it needs to be accessible by all parts of the code.

**How was this challenge? Did you get a good review of some of the basics?**

This challenge was good. I did like the review, but I'm really looking forward to learning more about what we can do with Ruby.

The solution files can be found here:
[Defining variables](https://github.com/agurusa/phase-0/blob/master/week-4/defining-variables.rb)
[Simple string methods](https://github.com/agurusa/phase-0/blob/master/week-4/simple-string.rb)
[Local variables and basic arithmetical operations](https://github.com/agurusa/phase-0/blob/master/week-4/basic-math.rb)