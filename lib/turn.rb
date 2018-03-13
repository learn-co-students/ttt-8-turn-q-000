def display_board(board)
  dash = "-" * 11

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts dash
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts dash
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1

  position.between?(0, 8) && !position_taken?(board, position) ? true : false
end

def position_taken?(board, position)
  pos = position.to_i
  if board[pos] == "" || board[pos] == " " || board[pos] == nil
    false
  else
    true
  end
end

def move(board, position, char="X")
  board[position.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    display_board(board)
    turn(board)
  end
end












