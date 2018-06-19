def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_num)
  user_num.to_i - 1
end

def valid_move?(board, index)
  if not position_taken?(board, index) and index.between?(0,8)
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  board_index = input_to_index(user_input)
  if valid_move?(board, board_index)
    move(board, board_index)
    display_board(board)
  else
    turn(board)
  end
end