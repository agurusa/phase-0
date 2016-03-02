# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase
cartmans_phrase = "Screw you guys " + "I'm going home."
# The error occurred in the errors.rb file.
# The error occurred on line 8.
# The error is a syntax error.
# It occurred because it did not expect a '=', it expected end-of-input
# Variables cannot be declared in this way. You have to be declared like this:
#variable = "string" + "string"

#def cartman_hates(thing)
  #while true
    #puts "What's there to hate about #{thing}?"
#end

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#error.rb
# 2. What is the line number where the error occurs?
#174
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The error is at the end of the document.
# 6. Why did the interpreter give you this error?
#The error is that there is no end to the while loop. There is supposed to be an end statement.

# --- error -------------------------------------------------------

#south_park
south_park = 4
# 1. What is the line number where the error occurs?
# 45
# 2. What is the type of error message?
# name error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# There is nothing in the error message that points to where the error is.
# 5. Why did the interpreter give you this error?
#The term south_park is not defined as a variable or as a method. The code does not know how to interpret this line because there isn't a "verb" or a definition of the "noun."
# --- error -------------------------------------------------------

#cartman()
def cartman()
end
# 1. What is the line number where the error occurs?
# 59
# 2. What is the type of error message?
# no method error
# 3. What additional information does the interpreter provide about this type of error?
#  undefined method 'cartman' for main:object
# 4. Where is the error in the code?
# There is nothing in this error message that points to where the error is.
# 5. Why did the interpreter give you this error?
# There is nothing defining what this method should be doing. It needs to be in the proper formatting with def and end.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

def cartmans_phrase(argument)
  puts "I'm not fat; I'm big-boned!"
end
cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#75
# 2. What is the type of error message?
#argument error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of artuments (1 for 0) from errors.rb:79:in '<main>'
# 4. Where is the error in the code?
#There is nothing in this error message that points to where the error is.
# 5. Why did the interpreter give you this error?
#There is no argument in this method. It needs to be written: def method(argument)

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

#cartman_says
cartman_says("I hate you")

# 1. What is the line number where the error occurs?
#97
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (0 for 1) from errors.rb:101: in '<main>'
# 4. Where is the error in the code?
#There is nothing in this error message that points to where the error is.
# 5. Why did the interpreter give you this error?
#The code is calling on the method, but is not giving it an argument to use for the method. It needs an "offensive_message."



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
#119
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 2) from errors.rb:123: in '<main>'
# 4. Where is the error in the code?
#There is nothing in this error message that points to where the error is.
# 5. Why did the interpreter give you this error?
#There is only 1 argument given on line 123; there are supposed to be 2.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"
"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# in `*'
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum(Type Error) from errors.rb:140: in '<main>'
# 4. Where is the error in the code?
#There is nothing in this error message that points to where the error is.
# 5. Why did the interpreter give you this error?
# You cannot multiply an integer by a string, but you can multiply a string by an integer. 5 cannot be multipled "respect my authoritay" amount of times, but the opposite is true.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0
amount_of_kfc_left = 20/1

# 1. What is the line number where the error occurs?
#156
# 2. What is the type of error message?
#zero division error
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0 from errors.rb:156: in '<main>'
# 4. Where is the error in the code?
# /
# 5. Why did the interpreter give you this error?
#  You cannot divide something by 0; mathematically this would not be possible.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#172
# 2. What is the type of error message?
#Load Error
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file --/users/.../cartmas_essay.md
# 4. Where is the error in the code?
#'require_relative'
# 5. Why did the interpreter give you this error?
#The file cartmas_essay.md doesn't exist in my files, so it cannot be opened.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
1. Which error was the most difficult to read?
The while loop error was actually the most difficult to read. I thought that the error meant that the loop would run endlessly. Instead, the error was that "end" wasn't written after the loop.

2.How did you figure out what the issue with the error was?
I did a little research and tried changing the code a bit. I added a counter (i= 0, i+=1, while i<2), but that didn't change the error message. When I deleted the while loop, the error message was gone, so I knew it had to have something to do with that.I ended up reviewing while loops and remembering that it needed a separate end statement.

3.Were you able to determine why each error message happened based on the code?
Yes! I was excited to find the errors in all the codes (with the exception of the while loop) before reading the error message. Knowing what the error was, then reading the message, made it easier to understand the language in error messages.

4.When you encounter errors in your future code, what process will you follow to help you debug?
I will go to the code line that the error is on, and read through the code that is there. I will be able to look up the type of error message and see where those errors typically stem from. I also find that reading through the additional information is particularly useful , as it generally points out the exact problem.


=end