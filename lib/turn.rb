def turn(board)
  # ask for input
  puts "Please enter 1-9:"
  # get input
  space = gets.strip
  # if input is valid
  if valid_move?(board, space)
    # make the move for input
    move(board, space)
    # show the board
    display_board(board)
  # else
  else
  # ask for input again until you get a valid input
    turn(board)
  # end
  end
end


def display_board(board) #display_board
  #Should accept a board as an argument and print out the current state of the board for the user.
  border = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts border
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts border
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, space) #valid_move?
  #convert to integer, adjust for 0 index 
  space = space.to_i - 1
  #check if move is outside range
  if !space.between?(0, 8)
    return false
  #check if position is already occupied
  elsif position_taken?(board, space)
    return false
  #return true if the position is within the range and unoccupied.
  else
    return true
  end
end


def position_taken?(board, space, char = "X") #position_taken?
  #Check if a position is occupied in its own method, perhaps #position_taken?
  if board[space] == " " || board[space] == "" || board[space] == nil
    return false
  else
    return true
  end
end


def move(board, space, char = "X") #move
  #adjust for 9 index
  index = space.to_i - 1
  #save char in correct position in array
  board[index] = char
  return board
end

# board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]