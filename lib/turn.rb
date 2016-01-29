def display_board(cell)
  puts " #{cell[0]} | #{cell[1]} | #{cell[2]} "
  puts "-----------"
  puts " #{cell[3]} | #{cell[4]} | #{cell[5]} "
  puts "-----------"
  puts " #{cell[6]} | #{cell[7]} | #{cell[8]} "
end 

def move(board, position, value = "X")
  board[position.to_i-1] = value
end

def valid_move?(board,position)
  position = position.to_i
    if ((position.to_i).between?(1,9) == true && (position_taken?(board,(position.to_i-1)) == false)) 
     true
   else
     false
  end
end
 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board,input)
    move(board,input)
  else
    turn(board)
  end
  display_board(board)
end

def position_taken?(board,position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end