def move(board,position,token="X")
  board[(position.to_i)-1]=token
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets
  if (0<position.to_i&&position.to_i<10)&&(valid_move?(board,position))
    move(board,position)
    display_board(board)
  else
    turn(board)
  end
end

# code your #valid_move? method here
def valid_move?(board,position)
  ((0<position.to_i&&position.to_i<10)&&!position_taken?(board,position.to_i))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  (board[position.to_i-1]=="X"||board[position.to_i-1]=="O")
end