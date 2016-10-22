board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, position, character = "X")
  index = position
  board[index] = character
end


def valid_move?(board,position)
  if position.to_i.between?(0,8) && !position_taken?(board,position)
    true
  else
    false
  end
end


def position_taken?(board,position)
  board[position] != " "
end

def turn(board)
  puts "Please enter 1-9:"
  x = gets.strip
  z = input_to_index(x)
  if valid_move?(board, z)
    move(board, z, character = "X")
    display_board(board)
  else
    turn(board)
  end
end
