def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, char = "X")
   elsif 
    until valid_move?(board, position) == true
    puts "Invalid move.  Please select an unoccopied position on the board."
    position = gets.strip
   end
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

def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) == false && position.between?(0,8)
    return true
  elsif position_taken?(board, position) == true
    return false
  else 
    return false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == ""
    return false
  elsif board[position] == nil
    return false
  else return true
  end
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char
end
