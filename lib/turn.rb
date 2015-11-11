def turn(board)

puts "Please enter 1-9:"
position = gets.chomp

  if valid_move?(board, position) == false
    turn(board)
  else
    move(board, position, char = "X")
    display_board(board)
  end

end




def valid_move?(board, position)

  if position.to_i < 1 || position.to_i > 9
    return false
  elsif position_taken?(board, position) == true
    return false
  else 
    return true
  end

end

def position_taken?(board, position)

  if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    return true
  else
    return false
  end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = "X")
position = position.to_i
board[position - 1] = char

end