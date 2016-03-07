def valid_move?(board, position)
  if position.to_i.between?(1, 9)==true && board[position.to_i - 1]== " "
    return true
  else 
    return false
  end
end

puts valid_move?([" ", " ", " ", " ", "X", " ", " ", " ", " "], "invalid")
puts "invalid".to_i