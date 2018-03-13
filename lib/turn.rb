def valid_move?(board,position)
  if (!(position.is_a? Integer))
    position = position.to_i-1
   else
    position = position -1
  end
  if((0..8) === position &&!(position_taken?(board,position)))
    return true
   else
     return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  if(board[position]==" "||board[position]==""||board[position]==nil)
    return false
  elsif(board[position]=="X"||board[position]=="O")
    return true
  end
end

def display_board(board)
  board = board.reverse
  seperator = "-----------"
  print(" #{board.pop} | #{board.pop} | #{board.pop} \n")
  puts(seperator)
  print(" #{board.pop} | #{board.pop} | #{board.pop} \n")
  puts(seperator)
  print(" #{board.pop} | #{board.pop} | #{board.pop} \n")
end

# code your move method here!
def move(board,position,value="X")
  board[position.to_i-1]=value
end

def turn(board)
  puts("Please enter 1-9:")
  position = gets.strip
  if valid_move?(board,position)
    move(board,position)
    display_board(board)
  else
    puts("invalid move")
    display_board(board)
    turn(board)
  end
end