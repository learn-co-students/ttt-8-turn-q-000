#the turn method
def turn(board)
  puts "Please enter 1-9:"
  move(board,input(board))
  display_board(board)
end

# the method to receive input and test for validity
def input(board)
  move = gets

  if valid_move?(board,move)
    move
  else
    input(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board,position,char="X")
  position = position.to_i-1
  board[position] = char
end


# code your #valid_move? method here
def valid_move?(board, position)

  position = position.to_i-1

  if position.between?(0,8) && !(position_taken?(board,position))
    true
  else
    false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)

  if board[position]=="X" || board[position]=="O" then true else false end

end