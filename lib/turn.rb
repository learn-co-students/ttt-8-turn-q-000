def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  if(valid_move?(board,pos))
    move(board, pos, "X")
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, pos)
  pos = pos.to_i
  if(pos.between?(1,9) && !position_taken?(board, pos-1))
    valid = true
  else
    valid = false
  end
  valid
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  if board[pos]=="X" || board[pos]=="O"
    taken = true
  else
    taken = false
  end
  taken
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, spot, player = "X")
  board[spot.to_i - 1] = player;
end