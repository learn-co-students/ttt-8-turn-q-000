require 'pry'
def display_board(board)
  puts    " #{board[0]} | #{board[1]} | #{board[2]} "
  puts    "-----------"
  puts    " #{board[3]} | #{board[4]} | #{board[5]} "
  puts    "-----------"
  puts    " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i-1
  if position_taken?(board, position) == false && (0..9).include?(position)
    true
  else 
    false 
  end
end

def position_taken?(board, position)
  position = position.to_i
  if board[position] == "X" || board[position] == "O"
    true
  else 
    false 
  end
end

def move(board, position, marker)
  board[position.to_i-1] = marker
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  unless valid_move?(board, position) == true
    puts "Please enter 1-9:"
    position = gets.strip
  end
  move(board, position, marker="X")
  display_board(board)
end