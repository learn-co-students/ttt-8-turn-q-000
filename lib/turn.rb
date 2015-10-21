def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position_num = position.to_i - 1
  if position_taken?(board, position_num) || !(position.to_i.between?(1,9))
    false
  else
    true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def move(board, position, token="X")
  board[position.to_i - 1] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position, "X")
    display_board(board)
  else
    turn(board)
  end
end