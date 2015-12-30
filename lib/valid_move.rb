# code your #valid_move? method here
def valid_move?(board,position)
  position = position.to_i
  return true if (position.between?(1, 9) == true && position_taken?(board, position) == true)
  return false if (position.between?(1, 9) == false || position_taken?(board, position) ==  false)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  return true if (board[position-1] == " " || board[position-1] == "" || board[position-1] == nil)
  return false if (board[position-1] == "X" || board[position-1] == "O")
end