def move(array, position, value = "X")
  position = position.to_i
  array[position-1] = value
  display_board(array)
end
