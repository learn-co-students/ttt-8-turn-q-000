def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.chomp

   if valid_move?(board ,input)
     move(board , input , "X")
   else
     turn(board)
   end

end


position=position.to_i-1

def position_taken?(board , position)
  if board[position] == " " || board [position] == "" || board [position] ==nil
    return false

else
  return true
  end
end


def valid_move?(board , position)
 if board[position.to_i-1] == " " || board [position.to_i-1] == "" || board [position.to_i-1] ==nil
       if position.to_i>=1 && position.to_i <=9
       return true
       else
         return false
       end
  end

end


def move (board , location ,character="X")
  board[(location.to_i-1)]=character
  display_board(board)
end


