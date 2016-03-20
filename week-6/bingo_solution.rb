# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
# Randomly choose a letter out of the bingo array. Use the index value, because it will be the same as the column numbers in the bingo board.
# Randomly choose a number between 1 and 100.

# Check the called column for the number called.
  #fill in the outline here
# Each column is going to be a different index in the board array. Go to the column that matches the randomly chosen letter from the bingo array.
# Iterate through each row to access that column number.

# If the number is in the column, replace with an 'x'
  #fill in the outline here
# IF the value at that spot is equal to the randomly chosen number, replace it with an x.

# Display a column to the console
  #fill in the outline here
# Print out every value in that column by iterating through the rows and printing out the value at that index.

# Display the board to the console (prettily)
  #fill in the outline here
# Iterate through each row and print it out to the screen.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     bingo_array = ["B", "I", "N", "G", "O"]
#     @letter = rand(4)
#     @number = rand(1..100)
#     p "#{bingo_array[(@letter -1)]}, #{@number.to_s}"
#   end

#   def check
#     @bingo_board.each do |row|
#       if row[@letter] == @number
#         row[@letter] = "X"
#       end
#     end
#   end

#   def print_board
#     p "Your board:"
#     @bingo_board.each_with_index do |row, index|
#       p row
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    bingo_array = ["B", "I", "N", "G", "O"]
    @column = rand(4)
    bingo_letter = bingo_array[@column]
    @number = rand(1..100)
    p "#{bingo_letter}, #{@number.to_s}"
  end

  def check
    @bingo_board.each do |row|
      if row[@column] == @number
        row[@column] = "X"
      end
    end
  end

  def print_board
    p "Your board:"
    @bingo_board.each do |row|
      p row
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.print_board #board at the beginning of the game

100.times do
  new_game.call
  new_game.check
end

new_game.print_board #board at the end of the game


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding was actually pretty easy for this challenge. I had a little trouble thinking about how to print out the board in a readable way, but after I started thinking about the board as a series of rows, it became easier to understand the index values.

# What are the benefits of using a class for this challenge?
# Creating a class for the bingo board allowed different instance methods to be used on the object in the bingo board class. There were multiple steps in the methods call, check, and print board- it was useful to write the code for those separately, then call them after the object had been created.

# How can you access coordinates in a nested array?
# You access coordinates using the index values of the outer most nest to the inner most nest. For example, p board[1][2] would access the value at the outside nest at index value 1: [22, 69, 75, 65, 73], then print out the value at the inside nest at index value 2: 75.


# What methods did you use to access and modify the array?
# I used .each. I used .each because I wanted to iterate through the rows, so I only needed to iterate through the outside nest in the nested array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned a bit about .none?. This method is a boolean which returns true or false. It passes each element in the enumerable to the block, and checks if it is true or false. .none will return true if none of the elements evalute to true. It will return false if any of the elements evalues to true. I don't really see the purpose in calling it on an enumerable without providing a block; it would't have anything to compare the element to. This method could only be called on an object that has a .each method specified, because it must be able to iterate through the object.

# How did you determine what should be an instance variable versus a local variable?
# The instance variables were those that I had to call on in all the instance methods. I only had to define them once, then I could access them in each method. Local variables were only used when I was using them in one method, and they didn't have to be accessed by multiple methods in the class.

# What do you feel is most improved in your refactored solution?
# Not much. I had a lot of trouble refactoring this one. I did a little to make the variable names more readable, but I couldn't find any methods that would make this shorter/more efficient.