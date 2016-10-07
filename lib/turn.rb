def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board,index)
    puts "Invalid move, please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board,index)
  display_board(board)
end

def input_to_index(user_input)
  user_input.to_i-1
end

def move(board,index,value="X")
  board[index] = value
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index<9 && index>=0 && !position_taken?(board,index)
    true
  else
    false
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" or board[index] == nil
    false
  else
    true
  end
end
