def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, position, value = "X")
  board[position.to_i - 1] = value
end

def position_taken?(board, position)
  if board[position.to_i] == " " || board[position.to_i] == "" || board[position.to_i] == nil
    false
  elsif board[position.to_i] == "X" || board[position.to_i] == "O"
    true
  end
end


def valid_move?(board, position)
  !position_taken?(board, position.to_i-1) && position.to_i.between?(1, 9)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip


  if valid_move?(board, position)
  move(board, position, value = "X") && display_board(board)
  else puts turn(board)
  end
end
