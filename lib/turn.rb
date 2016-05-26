def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,position,char = "X")
  board[position.to_i - 1] = char
end

def position_taken?(board, position)
  if board[position] != " " && board[position] != ""
    true
  else
    false
  end
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0,8) && !position_taken?(board,position)
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board,input)
    display_board(board)    
  else
    puts "Please try a valid input!"
    display_board(board)
    turn(board)
  end
end
