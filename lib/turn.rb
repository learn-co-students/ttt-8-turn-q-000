def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position.to_i)
  else
    turn(board)
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = "X")
  board[position - 1] = char
end

def valid_move?(board, position)
  position = position.to_i
  position.between?(1,9) && !position_taken?(board, position - 1)
end

def position_taken?(board, position)
  value = board[position]
  if value == " " || value == "" || value == nil 
    false  
  elsif value == "X" || value == "0"
    true
  end
end
