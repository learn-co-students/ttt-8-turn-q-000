#places the players choice of move on the board
def move(board, input, player = "X")
  location = input.to_i
  board[location - 1] = player
  return board
end

#returns false if the position is not already taken and available for a move.
def position_taken?(board, position)
  index = position.to_i - 1
  (board[index] != "" && board[index] != " " && board[index] != nil)? true:false
end

#returns true if the player chooses a number between 1 and 9 AND the position is not already taken
def valid_move?(board, position)
  if position.to_i.between?(1, 9) == true && position_taken?(board, position) == false
    true
  else
    false
  end
end


#accepts an array that is the current version of the board and prints the representation to the screen
def display_board(brd)
  line1 = " #{brd[0]} | #{brd[1]} | #{brd[2] } "
  divide = '-' * 11
  line2 = " #{brd[3]} | #{brd[4]} | #{brd[5] } "
  line3 = " #{brd[6]} | #{brd[7]} | #{brd[8] } "
  puts line1, divide, line2, divide, line3
end

#provides structure using the methods above as helper methods, to generate a turn
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  moveIsValid = valid_move?(board, position)
  if moveIsValid
    move(board, position, player = "X")
    display_board(board)
  else
    puts "Sorry, that move is not available."
    turn(board)
  end
end


