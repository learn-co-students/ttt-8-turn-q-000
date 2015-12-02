def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, value = "X")
  board[position.to_i - 1] = value
end

def valid_move? (board, position)
    if position.to_i.between?(1,9) && position_taken?(board, position.to_i-1) == false
    true
  else position_taken?(board, position) == true
    false
  end
 end

def position_taken? (board, position)
  if board[position] == " " || board[position] == "" || board [position] == nil
    false
  else
    true
  end
end



def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
 if valid_move?(board, position) == true
     move(board, position, value = "X")
     display_board(board)
  else
     puts "Please enter 1-9:"
    position = gets.strip
  end
end

