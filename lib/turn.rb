def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, pos)
  if board[pos.to_i - 1] == " " && pos.to_i.between?(1, 9)
    true
  elsif position_taken?(board, pos)
    false
  end
end

def position_taken? (board, pos)
  pos = pos.to_i - 1
  if board[pos] == " " || board[pos] == "" || board[pos] == nil
    false
  elsif board[pos] == "X" || board[pos] == "O"
    true
  end
end

def move (board, pos, char="X")
  position = pos.to_i - 1
  board[position] = char
  board
end

def turn (board)
  input = puts "Please enter 1-9:"
  pos = gets.strip

  if valid_move?(board, pos)
    move(board, pos)
    display_board(board)
  else
    turn(board)
  end
end

def play (board)
end