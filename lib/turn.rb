# helper methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if 
    position_open?(board, position) == false || ((position.to_i - 1).between?(0, 8) == false) || Integer(position) != position.to_i
    false
  else
    true
  end
end

## changing this from "position_taken?" to "position_open?
def position_open?(board, position)
  if board[position.to_i - 1] != "X" && board[position.to_i - 1] != "O"
    true
  else
    false
  end
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
      move(board, position, "X")
      display_board(board)
  else
    turn(board)
  end
end
