board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# defining valid_move?
def valid_move?(board, position)
  position = position.to_i - 1
  position_taken?(board, position) == false && position.between?(0,8) == true
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  board[position] != " " && board[position] != "" && board[position] != nil
end

# Defining move
def move(board, position, char="X")
  board[position.to_i - 1] = char
end

# Defining Turn
def turn(board)
  puts 'Please enter 1-9:'
  position = (gets)
  if valid_move?(board, position)
    move(board, position, char = "X")
    display_board(board)
  else turn(board)
  end
end
