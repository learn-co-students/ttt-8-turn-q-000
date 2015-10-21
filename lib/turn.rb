def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
 
  if  valid_move?(board,position)
      move(board,position,token = "X") 
       puts display_board(board)
     else
      while turn(board) == false
       puts "The current number is less than 20."
       turn(board)
        end
     

      
end

end

def display_board(board= [" "," "," "," "," "," "," "," "," "])
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 



def valid_move?(board, position)
  if (position.to_i-1).between?(0, 8) && position_taken?(board, position)
    true
  else
   false
 end
end
 
 

 def position_taken?(board, position)
 if board[position.to_i-1] == "" || board[position.to_i-1] == " " || board[position.to_i-1] == nil
   true
  elsif board[position.to_i-1] == "X" || board[position.to_i-1] == "O" 
    false
  end  
end 


def move(board,position,token = "X") 
    board[position.to_i-1] = token
    
end