#creates an empty array to store the contents of the tic tac toe board
board = []

#defines a method for the user to take a turn
def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position, character = 'X')
  else
    turn(board)
  end
  display_board(board)
end

#defines a method that prints to the screen the contents of an array 9
def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
    puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

#defines a method that uses the position taken method and a range of values to check if an input position makes a valid move
def valid_move?(board, position)
  if position.to_i.between?(1,9) && position_taken?(board, position.to_i - 1) == false
    return true
  else
    return false
  end
end
#defines a method "position_taken?" that checks to see if a character is in a specified position on the board
def position_taken?(board, position)
 if board[position] == "X" || board[position] == "O"
   return true
 else
   return false
 end
end

#defines a method "move" that accepts a board, a requested position and a character as arguments and updates the "board" array with the character specified at the requested position
def move(board, position, character = "X")
  board[position.to_i - 1] = character
end
