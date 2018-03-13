board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) == false && position.between?(0, 8) == true
    true
  elsif position_taken?(board, position) == true || position.between?(0, 8) == false
    false
  else 
    false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else 
    true
  end
end

def move(array, location, value = "X")
  location = location.to_i - 1
  array[location] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == false
    turn(board)
  else
    move(board, position, "X")
    display_board(board)
  end
end



