def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  board[position] != " " && board[position] != "" && board[position] != nil
end

def valid_move?(board, position)
  index = position.to_i - 1
  if index.between?(0,8) && !(position_taken?(board, index))
    true
  else
    false
  end
end

def move(board, position, char = "X")
  if valid_move?(board, position)
    board[position.to_i - 1] = char
  else
    turn(board)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if move(board, input)
     display_board(board)
  end
end





