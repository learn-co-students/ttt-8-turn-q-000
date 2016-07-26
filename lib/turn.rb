# shows the current board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# translate's the user's input into the indexed grid
def input_to_index(user_input)
  user_input.to_i - 1
end

# places the player's move
def move(board, index, value="X")
  board[index] = value
end

# confirms if the player's move is valid
def valid_move?(board, index)
  index.between?(0, 8) && position_taken?(board, index) == false
end

# confirms if a position is already occupied
def position_taken?(board, index)
  board[index] ==  "X" || board[index] == "O"
end

# runs the order of turns
def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    "invalid"
    turn(board)
  end
end
