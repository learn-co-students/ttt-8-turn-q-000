def valid_move?(board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, position) == false
    return true
  else
    return false
  end
end