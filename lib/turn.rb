def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player="X")
  position=position.to_i
  board[position-1]=player
end

def position_taken?(board,position)
  if (board[position-1]==" " || board[position-1]=="" || board[position-1]==nil)
    return false
  else
    return true
  end
end

def valid_move?(board,position)
  position=position.to_i
  if (position.between?(1, 9)==true && position_taken?(board,position)==false)
    return true
  else 
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip 
  until valid_move?(board,input)==true
    puts "Please enter 1-9:"
    input = gets.strip 
  end
move(board,input)
display_board(board)
end




