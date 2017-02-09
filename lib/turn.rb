require_relative '../lib/turn'
def welcome
  puts "Please enter 1-9:"
end

def display_board(board)
  row = "-----------"
  puts " #{board[0]} " + '|' + " #{board[1]} " + '|' + " #{board[2]} "
  puts row
  puts " #{board[3]} " + '|' + " #{board[4]} " + '|' + " #{board[5]} "
  puts row
  puts " #{board[6]} " + '|' + " #{board[7]} " + '|' + " #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def position_taken?(board, index)
  if (board[index] == "X") || (board[index] == "O")
    return true
  elsif (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def turn(board)
  welcome
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      turn(board)
      break
    end
  end
end
