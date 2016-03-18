# Displays Tic Tac Toe board.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Checks if board position is not taken.
def position_taken?(board, position)
  !(board[position].nil? || board[position].empty? || board[position] == " ")
end

# Checks if the move is valid.
def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i - 1)
end

# Accepts the move (setting the position on the board).
def move(board, position, token = "X")
  board[position.to_i - 1] = token
end

# Starts the game!
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end
