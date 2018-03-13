
def valid_move? (board, position)
  if position.to_i == 1..9
    return true
  else
    return false
  end
end

def position_taken? (board, position)
  if valid_move?
    return true
  else
    return false
  end

  if board[position] == " " || board[position] == "" || board[position] == nil
    return true
  elsif board[position] != "X" || board[position] != "O"
    return true
  else
    return false
  end
end