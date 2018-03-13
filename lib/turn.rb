def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position < 0 || position > 8
    false
  elsif board[position] == "X" || board[position] == "O"
    false
  else
    true
  end
end

def move(board, position, char="X")
  position = position.to_i - 1
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  cell = gets.strip
  if valid_move?(board, cell)
    move(board, cell)
    display_board(board)
  else
    turn(board)
  end
end
