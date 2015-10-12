board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board,position)
  position = position.to_i - 1
  if position.between?(0,8) == false
    false
  elsif position_taken?(board,position) 
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in 
def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position]== ""
    false
  elsif board[position]== nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, move, char="X")
  board[move.to_i-1]= char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  while valid_move?(board,input) == false
    puts "Please enter 1-9:"
    input = gets.strip
  end
    move(board,input)
    display_board(board)
end 