#from display board lab
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#from valid move lab
def position_taken?(board,position)
  !(board[position] == " " || board[position] == "" || board[position] == nil)
end
#from valid move lab
def valid_move?(board,position)
  if position_taken?(board,position.to_i-1)
    false
  elsif position.to_i-1 > 8
    false
  elsif position.to_i-1 < 0
    false
  else
    true

  end
end

#from move lab
def move(board, input, character = "X")
  board[input.to_i-1] = character
  display_board(board)
end

#new code below
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
 # if input is valid
  if valid_move?(board,input)
 # make the move for input
    move(board,input,character = "X")
 # else
  else
 # ask for input again until you get a valid input
    turn(board)
 # end
  end
end
