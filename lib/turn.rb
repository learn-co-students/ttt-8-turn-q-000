def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move board, position, token = "X"
  if (valid_move? board, position)
    board[position.to_i - 1] = token
    display_board(board)
  else
    puts "That move was invalid"
    turn(board)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  move board, position
end

def valid_move? board, position
  board_position = position.to_i - 1
  if board_position.between?(0, 8) && board[board_position] == " "
    return true
  else
    return false
  end
end
