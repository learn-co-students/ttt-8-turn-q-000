#variables: board, character, space/position(!)

def welcome
  puts "Welcome to Tic Tac Toe!"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character = "X")
  position_int = position.to_i
  position_int -= 1
  board[position_int] = character
end

def valid_move?(board, position)
  position_int = position.to_i
  position_int -= 1
  if position_int.between?(0, 10)
    !(position_taken?(board, position_int))
  else
    false
  end
end

def position_taken?(board, position_int)
  if (board[position_int] == "X") || (board[position_int] == "O")
    true
  end
end

def turn (board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    puts "Invalid"
    turn(board)
  end
end