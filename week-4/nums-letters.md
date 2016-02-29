**What does puts do?**

The command '''ruby puts''' returns nil and prints the output on the console on a new line. This is different than '''ruby
p''' and '''ruby print''' because p will both return the output and print it on the console, while print will return nil and print it on the same line on the console.

**What is an integer? What is a float?**

An integer is a number with no decimal points, while a float is a number with decimal points. In order to return a float, you must input a float; meaning, you have to specify the digits after the decimal point.

**What is the difference between integer and float division? How would you explain the difference to someone who doesn't know anything about programming?**

Integer division would be 2 numbers without decimal points that are divided, and give you a number without decimal points as the answer. For example:
  9 / 2 = 4
Technically, we know that there is a remainder of 0.5, however, the number 4.5 is a float. If we want our answer to read as 4.5, we have to write:
  9.0 / 2.0 = 4.5

**Release 2**
Mini challenge code:

Hours in a year:
'''ruby
p 24.0 * 365.0
'''
Minutes in a decade:
'''ruby
p 60.0 * 24.0 * 365.0 * 10.0
'''