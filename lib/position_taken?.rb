def position_taken?(board, position)
  if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    return true
  elsif board[position.to_i] == " " || board[position.to_i] == "" || board[position.to_i] == nil
    return false
  end
end