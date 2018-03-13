def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def valid_move?(board,position)
  position = position.to_i
  if position.between?(1,9) && position_taken?(board,(position-1)) == false
    true
  end
end

def move(board,position,token="X")
  position = position.to_i
  if position.between?(1,9)
  board[position-1] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board,position)
    move(board,position,token="X")
    display_board(board)
  elsif !valid_move?(board,position)
    turn(board)
  end
end
