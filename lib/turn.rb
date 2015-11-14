def display_board(board)

  puts " #{board[0]} "+"|"+" #{board[1]} "+"|"+" #{board[2]} "+"\n"+"-----------"+"\n"+" #{board[3]} "+"|"+" #{board[4]} "+"|"+" #{board[5]} "+"\n"+"-----------"+"\n"+" #{board[6]} "+"|"+" #{board[7]} "+"|"+" #{board[8]} "
end

def valid_move?(board , position)
  position= position.to_i-1
  if position.between?(0,8)&& !(position_taken?(board,position))
    return true
  else
    return false
  end
end
def position_taken?(board,position)
  if board[position]==" "||board[position]==""||board[position]==nil
    return false
  elsif board[position]=="X"||board[position]=="O"
    return true
  end
end
def move(board,location,xo = "X")
  location=location.to_i-1
  board[location]=xo
  display_board(board)
end
def turn(board)
  puts "Please enter 1-9:"
  location=gets.strip
  if valid_move?(board,location)
    move(board,location,xo = "X")
  else
    turn(board)
  end
end