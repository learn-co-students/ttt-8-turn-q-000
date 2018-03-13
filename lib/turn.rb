def display_board(board)
  puts " "+board[0]+" "+"|"+" "+board[1]+" "+"|"+" "+board[2]+" "
  puts "-----------"
  puts " "+board[3]+" "+"|"+" "+board[4]+" "+"|"+" "+board[5]+" "
  puts "-----------"
  puts " "+board[6]+" "+"|"+" "+board[7]+" "+"|"+" "+board[8]+" "
end

def valid_move?(board,position)
  if position.to_i-1 < 9 && position.to_i-1>=0 && !position_take(board,position.to_i-1)
    return true
  end
  return false
end

def position_take(board,position)
  if board[position]=="X" || board[position]=="O"
    return true
  end
  return false
end

def move(board,position,move_character)
  board[position.to_i-1] = move_character
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board,position,"X")
  else
    turn(board)
  end
end

