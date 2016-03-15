# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
# Randomly choose a letter out of the bingo array. Use the index value, because it will be the same as the column numbers in the bingo board. This should be a variable that can be accessed anywhere, and also changed.
# Randomly choose a number between 1 and 100. This should be a variable that can be accessed anywhere, and also changed.

# Check the called column for the number called.
  #fill in the outline here
# Each column is going to be a different index in the board array. Go to the column that matches the randomly chosen letter from the bingo array.
# Iterate through each row to access that column number.

# If the number is in the column, replace with an 'x'
  #fill in the outline here
# IF the value at that spot is the same as a the randomly chosen number, replace it with an x.

# Display a column to the console
  #fill in the outline here
# Print out every value in that column by iterating through the rows and printing out the value at that index.

# Display the board to the console (prettily)
  #fill in the outline here
# Iterate through each row and print it out to the screen.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    bingo_array = ["B", "I", "N", "G", "O"]
    @letter = rand(4)
    @number = rand(1..100)
    p "#{bingo_array[(@letter -1)]}, #{@number.to_s}"
  end

  def check
    @bingo_board.each do |row|
      if row[@letter] == @number
        row[@letter] = "X"
      end
    end
  end

  def print_board
    p "Your board:"
    @bingo_board.each_with_index do |row, index|
      p row
    end
  end

end

# Refactored Solution



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
