# code your #valid_move? method here


def valid_move?(board, position)
  
  if position.to_i.between?(1, 9) == false
    puts "not on the board"
    return false
  elsif position_taken?(board, position) == true
    return false
  else
    return true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)
  if (board[position.to_i - 1] == "X") || (board[position.to_i - 1] == "O")
    puts "that one's taken."
    return true
  else
    return false
  end
end

