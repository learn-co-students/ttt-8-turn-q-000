
def valid_move?(board, position)# code your #valid_move? method here
# code your #position_taken? method here!
def position_taken?(board, position)
  if (board[position.to_i - 1] == "") || (board[position.to_i - 1] == " ") || (board[position.to_i - 1] == nil)
    return true
  elsif (board[position.to_i - 1] == "X") || (board[position.to_i - 1] == "O")
    return false
  end
end

def between?(position) 
  if (position.to_i >= 1)&&(position.to_i <=9)
  return true 
end
end

if (between?(position) == true) && (position_taken?(board, position) == true)
  return true
end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
