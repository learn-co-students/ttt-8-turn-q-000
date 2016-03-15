def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#determines whether player has chosen a proper position on the board and invokes position_taken?
def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) == true || position.between?(0,9) == false
    false
  else
     true
  end
end

# determines whether the player's selected board position is already taken
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

# moves to player's selection on board
def move(board, input, value = "X")
  input = input.to_i - 1
  board[input] = value
end

# runs an entire turn of Tic Tac Toe
def turn(board)
  #asks user for a position to move to
  puts "Please enter 1-9:"
  position = gets.strip
  # checks if position is valid
  if valid_move?(board, position)
    # if valid, moves user to that position and displays the board
    move(board, position)
    display_board(board)
  else
    # if invalid, makes the player choose again
    turn(board)
  end
end


