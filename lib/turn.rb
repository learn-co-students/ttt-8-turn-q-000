# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  position.between?(0, 8) && !position_taken?(board, position)
end

def position_taken?(board, position)
  !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def move(board, position, character = "X")
  index = position.to_i - 1
  board[index] = character
  board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    board = move(board, input)
    display_board(board)
  else
    turn(board)
  end
end