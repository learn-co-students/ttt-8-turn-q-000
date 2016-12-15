# code your #valid_move? method here
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