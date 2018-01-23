def input_to_index(user_input)
  index = user_input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) == true
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else 
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)
    if valid_move?(board, index) == true
      move(board, index, character = "X")
      display_board(board)
    else
      puts "This move is invalid. Please enter a number from 1-9 for a space that isn't already taken."
      turn(board)
    end
end