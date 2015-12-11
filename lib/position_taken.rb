# code your #position_taken? method here!
def position_taken?(board, position)
  here = board[position]
  if here == ' ' || here == '' || here == nil
    false
  else
    true
  end
end