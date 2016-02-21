def display_board(board)

pipe=" | "# Define a method display_board that prints a 3x3 Tic Tac Toe Board
dash="-----------"

  puts " "+ board[0]+pipe+board[1]+pipe+board[2]+" "
  puts dash
  puts " "+board[3]+pipe+board[4]+pipe+board[5]+" "
  puts dash
  puts " "+board[6]+pipe+board[7]+pipe+board[8]+" "
end

def valid_move?(board, position)
  pos = position.to_i
  if pos.between?(1,9)
    #(pos >0) && (pos<10)
     pos=pos-1
      position_taken?(board, pos)

  else
       pos=false
  #     puts "Your enter +{position} is invalid"

   # turn(board)
  end
  end

def position_taken?(board, position)

  ((board[position]==" ") || (board[position]=="") || (board[position]==nil))

end

def move(aray1, position1, value1="X" )
  pos=position1.to_i
  pos=pos -1
    aray1[pos]=value1
end
def turn(board)
  puts"Please enter 1-9:"
  position1 = gets.strip
  cannturn = valid_move?(board, position1)
  if  cannturn == false
      puts "Your enter  #{position1} is invalid"
      turn(board)
  end
 move(board, position1)
display_board(board)
end
