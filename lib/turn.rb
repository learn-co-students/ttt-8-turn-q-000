def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
 
def valid_move?(board,position)
   if(position.to_i >0 && position.to_i <=9 && !position_taken?(board,position.to_i-1))
     return true
   else
     return false
   end
 end
 
def position_taken?(board,position)
   if(board[position.to_i]=="X" || board[position.to_i]=="O")
     return true
   else
     return false
   end
 end
 
def move(board,position,char="X")
   board[position-1]=char
 end
 
def turn(board)
   puts "Please enter 1-9:"
   input = gets().strip
     if(valid_move?(board,input))
     board[input.to_i-1]="X"
     else
     turn(board)
     end
      display_board(board)
end 
