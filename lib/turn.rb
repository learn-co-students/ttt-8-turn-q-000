#helper method that accepts an array that is the current version of the board and prints it
def display_board(board)
  line1 = " #{board[0]} | #{board[1]} | #{board[2] } "
  divide = '-' * 11
  line2 = " #{board[3]} | #{board[4]} | #{board[5] } "
  line3 = " #{board[6]} | #{board[7]} | #{board[8] } "
  puts line1, divide, line2, divide, line3
end

#helper method that returns true if the player chooses a number between 1 & 9 and if the position is not already taken
def valid_move?(board, position)
  if position.to_i.between?(1, 9) == true && position_taken?(board, position) == false
    true
  else
    false
  end
end

#helper method that places the players choice of move on the board
def move(board, input, player = "X")
  location = input.to_i
  board[location - 1] = player
  return board
end

#helper method that returns false if the position is not already taken and if the position is available for a move.
def position_taken?(board, position)
  index = position.to_i - 1
  (board[index] != "" && board[index] != " " && board[index] != nil)? true:false
end

#method that generates a turn
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  moveIsValid = valid_move?(board, position)
  if moveIsValid
    move(board, position, player = "X")
    display_board(board)
  else
    puts "Sorry, that move is not available. Please try again."
    turn(board)
  end
end

