def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  while valid_move?(board,index) == false
    puts "Please enter 1-9:"
    index = gets.strip.to_i - 1
  end
  move(board, index)
  display_board(board)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index < 0 || index > 8
    false
  elsif position_taken?(board,index) == true
    false
  else
    true
  end
end

def position_taken?(board, index)
    if board[index] == "" || board[index] == " " || board[index] == nil
      false
    else
      true
    end
  end

def move(board, index, token = "X")
    board[index] = token
end
