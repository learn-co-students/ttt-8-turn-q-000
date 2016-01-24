def move(board,position,value = "X")
  position = position.to_i - 1
  board [position] = value
end