
def position_taken?(board, position)
  if board[position.to_i-1] == " "
    false

  elsif board[position.to_i-1] == ""
    false

  elsif board[position.to_i-1] == nil
    false

  else board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    true
  end
end

def valid_move?(board, position)
  if position_taken?(board,position) 
    false 
    elsif position.to_i.between?(1,9)
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char 
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
   true
   move(board, position, char = "X")
   display_board(board)
  else 
    puts "Please enter 1-9:"
    position = gets.chomp
  end
end

