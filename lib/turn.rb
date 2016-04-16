def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,location, player_character="X")
  board[location.to_i-1]=player_character
end

def position_taken?(board,position)
  if board[position.to_i] == "X" 
    true
  elsif board[position.to_i] == "O"
    true
  else board[position.to_i] == "" || " " || nil
    false
  end 
end

def valid_move?(board, position)
  if (position.to_i-1).between?(0,8) && position_taken?(board, position.to_i-1) == false
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position= gets.chomp
  if valid_move?(board, position)==true
    move(board,position)
  else
    turn(board)
  end
  puts display_board(board)
end
