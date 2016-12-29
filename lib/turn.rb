# A turn of Tic Tac Toe is composed of the following routine:

# Asking the user for their move by position 1-9.
# Receiving the user input.
# If the move is valid, make the move.
# If the move is invalid, ask for a new move until a valid move is received.
# Display the board after the valid move has been made.

# Pseudo Code:

# ask for input
# get input
# if input is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end
# show the board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, input, char ="X")
  input =input.to_i
  board[input-1]= char
  display_board(board)
end


# code your #valid_move? method here
def valid_move? (board, position)
  position = position.to_i
  if  position.between?(1,9) && position_taken?(board, position-1) == false
    return true
  else 
    return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " "
    return false
  elsif board[position]==""
    return false 
  elsif board[position]==nil
    return false
  else board[position]=="X" || board[position]=="O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board, input)
  else
    turn(board)
  end
end

# def turn(board)
#   puts "Please enter 1-9:"
#   input = gets.to_i 
#   if input.between?(1,9)
#     move(board, input, "X")
#   else
#     puts "Please enter 1-9:"
#   end
# end
