
# Accept position and make move if valid
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  until valid_move?(board, input)
    puts "Invalid Move! Try again."
    input = gets.strip
  end

  move(board, input)
  display_board(board)
end

# Place token in correct index in the board array
def move(board, position, token = "X")
  index = position.to_i - 1
  board[index] = token
end

# Check if a move is valid
def valid_move?(board, position)
  index = position.to_i - 1
  index.between?(0, 8) && !position_taken?(board, index)
end

# Check if a position is already filled
def position_taken?(board, position)
  board[position] == "X" || board[position] == "O"
end

# Print the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
