#display_board
def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} "
  print "-----------"
  print " #{board[3]} | #{board[4]} | #{board[5]} "
  print "-----------"
  print " #{board[6]} | #{board[7]} | #{board[8]} "
end

#position_taken
def valid_move?(board,position)
  if position.to_i.between?(1,9) && position_taken?(board,position)==false
    return true
  else
    return false
  end
end

  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position.to_i-1]==' ')||(board[position.to_i-1]=='')||(board[position.to_i-1]==nil)
    false
  elsif (board[position.to_i-1]=='X')||(board[position.to_i-1]=='O')
    true
  end
end

#move method
def move(board, position, token='X')
  board[position.to_i-1] = token
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets
  if valid_move?(board,input)==false
    input = gets
  end
  board[input.to_i-1]='X'
  display_board(board)
end

