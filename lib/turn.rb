# code your move method here!
#1. Define methods
#DISPLAY_BOARD
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1,9) && position_taken?(board, position) == false
    true
  else
    false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, position, player = "X")
  #position = position.to_i - 1
  board[(position.to_i)- 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board, position, player = "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    position = gets.strip
  end
end