def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  if position.to_i.between?(1,9) && !position_taken?(board,position)
       true
else
      false
     end
end
 def position_taken?(board,position)
  if board[position.to_i-1]==" "
    false
    else
      true
   end
 end


def move(board,input,value="X")
  board[input.to_i-1]=value
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  position = input
  if valid_move?(board,position)

       move(board,input,value="X")

     else
         puts "Invalid input. Please enter 1-9:"
turn(board)
  end

end

