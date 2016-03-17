def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
 if position.to_i.between?(1,9)  && !position_taken?(board,position)
   true
 end

end


def position_taken?(board,position)
  if board[position.to_i-1] == " "
    false
    elsif board[position.to_i-1] == ""
    false
    elsif board[position.to_i-1] == nil
    false
    else board[position.to_i-1] == "X" || "O"
    true
  end
end



def move(board,position,char="X")
  board[position.to_i-1]=char
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  if valid_move?(board,position)
    move(board,position,char="X")
    else !valid_move?(board,position)
    turn(board)
  end
  display_board(board)
end