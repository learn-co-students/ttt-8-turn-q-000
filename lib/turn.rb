def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end
  display_board(board)
end


# draw the current state of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# return true if the move is valid
def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

# return true if the position is occupied
def position_taken?(board, position)
  board[position] != " " && board[position] != ""
end

# add the player's token to the correct position in the array
def move(board, position, token = "X")
  board[position.to_i-1] = token
  display_board(board)
end

