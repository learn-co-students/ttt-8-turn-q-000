def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  else
    turn(board)
  end 
end 

def move(board, position, character="X")
 board[position.to_i-1]=character
end







board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  position=position.to_i-1
  
  if position>8 || position<0
    return false
  elsif board[position]=="X" || board[position]=="O"
    return false
  else 
    return true
  

  end
end

def position_taken?(board,position)
  
  if board[position]==" " || board[position]=="" || board[position]==nil
    return false

  elsif board[position]=="X" || board[position]=="O"
    return true

  end

end
