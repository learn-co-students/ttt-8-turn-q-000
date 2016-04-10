def valid_move?(board, position)
  position = position.to_i
  if position.between?(1, 9) == true && position_taken?(board, position) == false
    true
  else
    false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else
    true
  end
end

def move(board, position, token = "X")
  position = position.to_i - 1
  board[position] = token
  display_board(board)
end

def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end
end
