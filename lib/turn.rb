def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position) == false && position.between?(1,9)
    true
  elsif position_taken?(board, position) == true
    false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def move(board, position, character = "X")
  position = position.to_i - 1
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position, character = "X")
    display_board(board)
  else
    turn(board)
  end
end