def display_board(board)
  i=0
  while i<=8
    if (i!=2 && i!=5 && i!=8)
      print " #{board[i]} |"
    end
    if (i==2 || i==5 || i==8)
      print " #{board[i]} "
      puts ""
      puts "-----------"
    end
  i+=1
  end
end


def valid_move?(board, position)

  position=position.to_i
  if (position.between?(1,9) && position_taken?(board,position))
    return true
  else
    return false
  end
end


def position_taken?(board,position)
  position-=1
  if(board[position]==" X " && board[position]==" O ")
    return false
  elsif(board[position]==" ")
    return true
  end
end


def move(board,position,token=" X ")
  position=position.to_i
  position-=1
  board[position] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  if (!valid_move?(board, position))
    turn(board)
  end
  move(board,position,token="X")
  display_board(board)
end
