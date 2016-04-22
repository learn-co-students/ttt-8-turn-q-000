# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  if !(position > 0 && position < 10)
    return false
  end

  if position_taken?(board, position - 1)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  #board[position] != " " && board[position] != "" && board[position] != nil
  if board[position] == " "
    return false
  end

  if board[position] == ""
    return false
  end

  if board[position] == nil
    return false
  end

  if board[position] == "X" || board[position] == "O"
    return true
  end
end