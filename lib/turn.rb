def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} " 
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end

def move(board, position, char="X")
  board[position.to_i - 1]= char
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board,position)
  else
    turn(board)
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position]== "O"
    true
  else true 
  end
end

def valid_move?(board,position)
 position = position.to_i
    if position.between?(1,9) && position_taken?(board,position-1) == false
        true
    elsif position.between?(1,9) == false
        false
#    elsif position_taken?(board,position-1) == true
      else    false
    end
  end
