def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character = "X")
  board[position.to_i - 1] = character
end

def position_taken?(board, position)
  new_position = position.to_i - 1

  if board[new_position] == nil || board[new_position].strip == ""
    return false
  elsif board[new_position] == "X" || board[new_position] == "O"
    return true
  end
end
def valid_move?(board, position)
  current_move = position.to_i - 1

  if !position_taken?(board, position) && current_move.between?(0, 8)
    return true
  else
    false
  end
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
     move(board, input)
    
  else
    turn(board)
end
display_board(board)
end





