def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

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

def move(board,position,shape = "X")
  position = position.to_i
  board[position-1] = shape
end

def turn(board)
  
  puts "Please enter 1-9:"
  
  input = gets
    while valid_move?(board,input) == false
      puts "Please enter 1-9:"
      input = gets
    end
  
  move(board,input)

  display_board(board)
  
end
