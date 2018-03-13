def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, char = "X")
  board[position.to_i - 1] = char
end

# code your #valid_move? method here
def valid_move?(board, position)
  #tests in valid_move_spec.rb give position as a String ("1)")
  #use to_i method to convert to integers
  if position.to_i >= 1 && position.to_i <= 9 && !position_taken?(board, position.to_i)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)
  #use position - 1 to account for array indices vs human perception of tic tac toe spaces
  if board[position - 1] == "X" || board[position - 1] == "O"
    return true
  else
    return false
  end
end

##### ALL ABOVE ITEMS ARE HELPER METHODS ######

def turn(board)
  #prompt user for input
  puts "Please enter 1-9:"

  #get user input
  input = gets.strip

  #check input validity
  #if invalid
  if !(valid_move?(board, input))
    #recursive call to turn
    turn(board)
  else
    #process the move
    move(board, input)
  end
  #display new board
  display_board(board)
end














