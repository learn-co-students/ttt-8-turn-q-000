# accept board as argument and print out current state of board for user

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} " 
end

# returns true if position is within 1-9 and is unoccupied by "X" or "Y". Account for indexing
def valid_move?(board, position)
  position = position.to_i
  if (position.between?(1,9)) && !(board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O")
      return true
  else
    return false
  end
end

# Ensure the position on the board is available
def position_taken?(board, position)
  if !(board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O")
    return true
  else 
    return false
  end
end



# accept board, position (1-9), and token to mark board
# token has default value of 'X'
def move(board, position, token="X")
  board[position.to_i - 1] = token 
end

# Get input, validate it, and moke move 
def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
if valid_move?(board, position)
  move(board, position)
  display_board(board)
else
  turn(board)
end
end
