# Pseudo Code
# ask for input
# get input
#   if input is valid
  #make the move for input
#else
  #ask for input again until you get a valid input
#end
#show the board


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 




def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position)
    return false
  elsif !position.between?(0, 8)
    return false
  else
    return true
  end
end

def position_taken?(board, position)
  if board[position]==" "|| board[position]==""|| board[position]==nil
    return false
  else board[position]=="X"|| board[position]=="O"
    return true
  end
end

def move(board, position, char='X' )
  position_as_integer = position.to_i - 1
  board[position_as_integer] = char
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true
    move(board, position, char= "X")
  elsif valid_move?(board, position) == false
    turn(board)
  end
display_board(board) 
end

  
