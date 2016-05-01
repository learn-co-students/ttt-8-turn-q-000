def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position)
end

def position_taken?(board, position)
  if board[position.to_i-1] == "X"
    true
  elsif board[position.to_i-1] == "O"
    true
  else
    false
  end
end

def move(board, position, marker = "X")
  board[position.to_i-1] = marker
end

def turn(board)
  puts "Please enter 1-9:"
   position = gets.chomp
   if valid_move?(board , position.to_s)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end

    
end