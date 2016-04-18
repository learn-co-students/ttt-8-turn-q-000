def display_board(moves)
  print " #{moves[0]} "
  print "|"
  print " #{moves[1]} "
  print "|"
  puts " #{moves[2]} "
  puts "-----------"
  print " #{moves[3]} "
  print "|"
  print " #{moves[4]} "
  print "|"
  puts " #{moves[5]} "
  puts "-----------"
  print " #{moves[6]} "
  print "|"
  print " #{moves[7]} "
  print "|"
  puts " #{moves[8]} "
end

def position_taken? (board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  else
    true
  end
end

def valid_move? (board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, (position.to_i - 1)) == false
    true
  else
    false
  end
end

def move (board, position, char = "X")
  display_board(board[Integer(position) - 1] = char)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if  valid_move?(board,position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end
