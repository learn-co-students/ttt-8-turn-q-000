def turn(board)
  puts "Please enter 1-9:"
  location = gets.chomp
  if valid_move?(board, location)
    move(board, location)
  else 
  	until valid_move?(board,location)
  	  puts "Invalid Input. Number Not Between 1-9, Or Space Taken. Please Enter 1-9 "
  	  location = gets.chomp
  	end
  	move(board, location)
  end
  display_board(board)
end

def display_board(board)
#Shows the current state of board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, location)
# Determines as to whether the user's input is valid, that bhe input is between 1 & 9 (0 & 8) and the space is no longer taken
  location = location.to_i
  location = location -1 
  if location.between?(0,8) && position_open?(board, location)
  	true 
  else
  	false
  end
end

def position_open?(board, location)
  if board[location] ==" "
  	true 
  elsif board[location]==""
  	true
  elsif board[location]== nil
  	true	
  else
  	false
  end
end

def move(board, location, token = "X")
  location = location.to_i
  location = location -1 
  board[location] = token
end

