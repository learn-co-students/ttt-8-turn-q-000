def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, player="X")
  board[position.to_i - 1] = player  
  board
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  !position_taken?(board, position - 1) && position.between?(1, 9)
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)

  if board[position] == "X" || board[position] == "O"
    true 
  elsif board[position] == " " || board[position] == ""
    false 
  end
  
end

def turn(board)
  puts "Please enter 1-9:" 
  display_board(board)
  position = gets.strip

  if valid_move?(board, position)
    move(board, position, player="X")
    display_board(board)
  else
    turn(board)
  end


end

# ask for input
# get input
# if input is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end
# show the board







