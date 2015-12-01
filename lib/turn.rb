def turn(board)
  position = nil
  while position_not_valid(board, position) do
    puts "Please enter 1-9:"
    position = gets
  end
  if valid_move?(board, position)
    move(board, position)
  end
  display_board(board)
end

def position_not_valid(board, position)
  pos_i = position.to_i
  return true if pos_i == nil
  pos_i > 0 && pos_i < board.size ? false : true
end

def display_board(board)
  print_moves(board[0..2])
  print_separating_line
  print_moves(board[3..5])
  print_separating_line
  print_moves(board[6..8])
end

def print_moves(moves)
  puts " #{moves[0]} | #{moves[1]} | #{moves[2]} "
end

def print_separating_line
  puts "-" * 11
end

def valid_move?(board, position)
  pos_i = position.to_i
  return false if position_not_valid(board, pos_i)
  !postion_taken?(board, pos_i)
end

def postion_taken?(board, position)
  space = board[position - 1]
  !(space == "" || space == " " || space == nil)
end

def move(board, position, token = "X")
  board[position.to_i - 1] = token
end
