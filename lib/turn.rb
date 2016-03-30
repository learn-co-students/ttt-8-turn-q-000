board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
position = gets.strip

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if (position.to_i-1).between?(0, 8) == true && position_taken?(board, position) == false
    true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil
    false
  elsif board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    true
  end
end

def move(board, position, value = "X")
  board[position.to_i - 1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  if valid_move?(board, position) == true
    move(board, position, value = "X")
  elsif valid_move?(board, position) == false
    turn(board)
  end
end
