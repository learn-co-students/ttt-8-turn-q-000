

def display_board(board) 
  puts "   #{board[0]} | #{board[1]} | #{board[2]} 
  -----------
   #{board[3]} | #{board[4]} | #{board[5]} 
  -----------
   #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board,position)
  position = position.to_i
  position = position - 1
  case 
    when position <0
      return false
    when position >8
       return false
    when board[position] == "X" || board[position] == "O"
        return false  
    else
        return true   
  end  
end

def move(board,position,token)
 
  board[position.to_i - 1]=token
  display_board(board)
end

def turn(board,token="X")
  puts "Please enter 1-9:"
  position =gets
    if valid_move?(board,position) == false
      turn (board)
    else
    move(board,position,token)
  end
end

