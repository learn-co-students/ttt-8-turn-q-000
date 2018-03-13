def valid_move?(board, int)
  int = int.to_i-1
  if int.between?(0,8) && position_taken?(board, int)==false
    return true
  elsif int.between?(0,8)== false || position_taken?(board, int)==true
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def position_taken?(board, int)
  int=int.to_i
  if (board[int]==" ") || (board[int]=="")
    return false
  elsif (board[int]=="X") || (board[int]=="O")
    return true
  elsif (board[int]==nil)
    return false
  end
end

def display_board(board)

        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts " ----------- "
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts " ----------- "
        puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def move(board, position, token="X")
position = position.to_i-1
board[position]=token
return board

end

def turn(board)
  puts "Please enter 1-9:"
  number = gets
  if valid_move?(board, number) == true
     move(board,number,token="X")
   else
      turn(board)
    end
    display_board(board)
end
