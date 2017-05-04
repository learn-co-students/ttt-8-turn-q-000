#  HELPER METHODS IN LIB/TURN.RB

#Before defining #turn, you should define the following methods:
def turn(board)

#ask for input
  puts "Please enter 1-9:"

#get input
input = gets.strip

#if input is valid
if (valid_move?(board, input))

  #  make the move for input
  move(board, input)

#else
else

  #  ask for input again until you get a valid input
  puts "Please enter a valid move."
    turn(board)

#end
end

#show the board
display_board(board)
end


#display_board
#Should accept a board as an argument and print out the current state of the board for the user.

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end
#valid_move?
#Should accept a board and a position from the user (remember that the user will input a number 1-9 but your board is really indexed 0-8) and return true if the position is within the correct range of 1-9 and is currently unoccupied by an X or O token.

def valid_move?(board, input)
  position = (input.to_i)-1
  if (position.between?(0,8))
    return !(position_taken?(board, position))
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position]==" "||board[position]==""||board[position]==nil)
    return false
  else
    return true
  end

end

#Hint: While not explicitly required by this lab, you might want to encapsulate the logic to check if a position is occupied in its own method, perhaps #position_taken?
#move
#This method should accept a board, a position from the user (which will be in the 1-9 format), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.

def move(board, position, char="X")
  board[position.to_i-1]=char
end
