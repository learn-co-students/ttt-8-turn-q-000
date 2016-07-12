def display_board(board)
  row = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end
end
