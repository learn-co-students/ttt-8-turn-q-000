def valid_move?(board, position)
  puts "#{board.to_s} #{position.to_s}"
  position=position.to_i
  correctIndex = position <= 9 && position >= 1
  taken = position_taken?(board, position-1)



  if correctIndex && taken==false
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position]=="X" || board[position]=="O"
    true
  else
    false
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
def move(localBoard, index, choice=(no_argument_passed=true; "X"))
  localBoard[index.to_i-1]=choice
  localBoard
end