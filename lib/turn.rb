# pseudocode for #turn
# ask for input
# get input
# if input is valid
# make the move for input
# else
# ask for input again until you get a valid input
# end
# show the board

# Define #display_board(board)
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Define #valid_move?(board, position)
# return true if position is within 
# correct range (1-9) and currently
# unoccupied by "X" or "O"
def valid_move?(board, position)
  position_taken?(board, position) && position.to_i.between?(0, 10)
end

# Define #position_taken?(board, position)
# -create as a helper method for #valid_move?
def position_taken?(board, position)
  if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    return false
  elsif position == "invalid"
    return false
  else
    return true
  end
end

# Define #move(board, position, character = "X")
# -needs to set the correct index value using
# the user's selection (1-9)
def move(board, position, character = "X")
  board[position.to_i - 1] = character
end

# Define #turn(board)
# get input
# if input is valid
# make the move for input
# else
# ask for input again until you get a valid input
# end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, character = "X")
  else
    turn(board)
  end

display_board(board)
end










