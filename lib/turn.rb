# Turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == true
    move(board, position, character = "X")
  else
    turn(board)
  end
end

# Define helper methods for #turn

# Print out the current state of the board
def display_board(current)
  puts " #{current[0]} | #{current[1]} | #{current[2]} "
  puts "-----------"
  puts " #{current[3]} | #{current[4]} | #{current[5]} "
  puts "-----------"
  puts " #{current[6]} | #{current[7]} | #{current[8]} "
end

# Check if move is valid (including whether position taken)
def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0, 8) == true && position_taken?(board, position) == false
    true
  else
    false
  end
end

# Method to make move
def move(board, position, character = "X")
  position = position.to_i - 1
  board[position] = character
  display_board(board)
end

# Helper to #valid_move?

# Check if position is taken
def position_taken?(board, position)
  position = position.to_i
  if board[position] == " " || board[position] == "" || board[position] == "invalid"
    false
  else
    true
  end
end