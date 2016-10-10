# code your #valid_move? method here
def valid_move?(board, position)
  pos = position.to_i
  if pos.between?(1, 9) && !position_taken?(board, pos)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  here = board[position - 1]
  if here == ' ' || here == '' || here == nil
    false
  else
    true
  end
end