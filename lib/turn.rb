def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  position = position - 1

  if position.between?(0,8)
    final_outcome = position_taken?(board, position)
    !final_outcome
   else
    false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, position, token = "X")
  position = position.to_i
  position = position - 1

  board[position] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  is_valid_move = valid_move?(board, position)

  if is_valid_move
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end