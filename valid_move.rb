# code your #valid_move? method here
def valid_move?(board, pos)
  if (pos.to_i >= 1 && pos.to_i <= 9)
    if (position_taken?(board,pos))
      return false
    else
      return true
    end
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  if(board[pos.to_i-1] == "X" || board[pos.to_i-1] == "O")
    return true
  else
    return false
  end
end